<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2019 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 老猫 <thinkcmf@126.com>
// +----------------------------------------------------------------------
namespace app\portal\controller;

use cmf\controller\HomeBaseController;
use app\portal\model\PortalCategoryModel;
use think\DB;
class IndexController extends HomeBaseController
{
    public function index()
    {
    	//取出首页展示四个验厂二级分类
        $PortalCategory = new PortalCategoryModel();
        $map = array(
        'parent_id'=>1,
        'status'=>1,
        );
    	$yc_cateData = $PortalCategory->where($map)->order('list_order')->limit(25)->select()->toArray();
        foreach ($yc_cateData as $key => $value) {
            $yc_cateData[$key]['articles']  = DB::name('PortalCategoryPost')->alias('a')->where(['category_id'=>$value['id'],'status'=>'1'])->join('cmf_portal_post b','a.post_id = b.id')->field('post_title,post_id')->select()->toArray();
            $str = $yc_cateData[$key]['more'];
            $yc_cateData[$key]['thumbnail'] = $str['thumbnail'];
        }
        //OVER

        $rz_cateData = $PortalCategory->where( array(
            'parent_id'=>2,
            'status'=>1,
            ))->order('list_order')->limit(25)->select()->toArray();
        foreach ($rz_cateData as $key => $value) {
            $rz_cateData[$key]['articles']  = DB::name('PortalCategoryPost')->alias('a')->where(['category_id'=>$value['id'],'status'=>'1'])->join('cmf_portal_post b','a.post_id = b.id')->field('post_title,post_id')->select()->toArray();
            $str = $rz_cateData[$key]['more'];
             $rz_cateData[$key]['thumbnail'] = $str['thumbnail'];
        }
        //OVER


        $hy_cateData = $PortalCategory->where( array(
            'parent_id'=>19,
            'status'=>1,
            ))->order('list_order')->limit(17)->select();
        // var_dump($hy_cateData);die;
        foreach ($hy_cateData as $key => $value) {
            $str = $hy_cateData[$key]['more'];
            $hy_cateData[$key]['thumbnail'] = $str['thumbnail'];
        }
        //取出四个热门搜索标签
        $tagHotData = DB::name('PortalTag')->where(['status'=>'1','recommended'=>'1'])->limit(4)->select();
        $this->assign('tagHotData',$tagHotData);
    	$this->assign('rz_cateData',$rz_cateData);
        $this->assign('yc_cateData',$yc_cateData);
        $this->assign('hy_cateData',$hy_cateData);
        return $this->fetch(':index');
    }
}
