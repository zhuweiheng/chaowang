<?php
namespace app\portal\controller;

use cmf\controller\HomeBaseController;
use app\portal\model\PortalCategoryModel;

class CategoryController extends HomeBaseController
{

    public function get_yc()
    {
        $id                  = $this->request->param('id', 0, 'intval');
        // $portalCategoryModel = new PortalCategoryModel();

        // $category = $portalCategoryModel->where('id', $id)->where('status', 1)->find();
       
        // $this->assign('category', $category);

        // $listTpl = empty($category['list_tpl']) ? 'list' : $category['list_tpl'];
        return $this->fetch('/' . $listTpl);
    }

}
