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

class AutheController extends HomeBaseController
{
    public function index()
    {
    	$autheData = Db::name('PortalCategoryPost')->alias('a')->where(['category_id'=>'2','status'=>'1'])->join('cmf_portal_post b','a.post_id = b.id')->field('post_title,post_id,recommended,thumbnail')->select();
    	$this->assign('autheData',$autheData);
        return $this->fetch();
    }
    

}
