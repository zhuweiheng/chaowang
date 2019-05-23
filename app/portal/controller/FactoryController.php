<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Released under the MIT License.
// +----------------------------------------------------------------------
// | Author: 老猫 <thinkcmf@126.com>
// +----------------------------------------------------------------------

namespace app\portal\controller;

use cmf\controller\HomeBaseController;
use app\portal\model\PortalTagModel;
use app\portal\model\PortalCategoryModel;
use think\DB;

class FactoryController extends HomeBaseController
{
    public function index()
    {
    	$factoryData = Db::name('PortalCategoryPost')->alias('a')->where(['category_id'=>'1','status'=>'1'])->join('cmf_portal_post b','a.post_id = b.id')->field('post_title,post_id,recommended,thumbnail')->select();
    	$this->assign('factoryData',$factoryData);
        return $this->fetch();
    }
    public function details()
    {
        $portalCategoryModel = new PortalCategoryModel();
    	$id = $this->request->param('id',1,'intval');
    	$detailsData = $portalCategoryModel->where('id',$id)->find();
        //var_dump($detailsData['more']);die;
    	$this->assign('detailsData',$detailsData);
    	//dump($detailsData);die;


        $category = $portalCategoryModel->where('id', $id)->where('status', 1)->find();
        $factoryHot = Db::name('PortalCategoryPost')->alias('a')->where(['category_id'=>'1','status'=>'1'])->join('cmf_portal_post b','a.post_id = b.id')->field('post_title,post_id,recommended,thumbnail')->order('post_hits')->limit(6)->select();
        $factory = Db::name('PortalCategoryPost')->alias('a')->where(['category_id'=>$id,'status'=>'1'])->join('cmf_portal_post b','a.post_id = b.id')->field('post_title,post_id,recommended,post_excerpt,post_hits')->order('create_time')->paginate(10);

        //取出页面联系电话单页数据
        $telData = DB::name('PortalPost')->where('id','26')->find();
        $ycSuccessData = DB::name('PortalPost')->where('id','27')->find();
        $this->assign('ycSuccessData',$ycSuccessData);
        $this->assign('telData',$telData);
        $this->assign('factory',$factory);
        $this->assign('page',$factory->render());
        // var_dump($factory);die;
        $this->assign('factoryHot',$factoryHot);
        $this->assign('category', $category);
        return $this->fetch();
    }

}
