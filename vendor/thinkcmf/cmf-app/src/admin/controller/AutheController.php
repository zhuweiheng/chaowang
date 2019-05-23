<?php
namespace app\admin\controller;
use cmf\controller\AdminBaseController;
use app\admin\model\AutheModel;
use think\Db;

class AutheController extends AdminBaseController{

    /**
     * 认证项目管理
     * @adminMenu(
     *     'name'   => '认证列表',
     *     'parent' => 'admin/Setting/default',
     *     'display'=> true,
     *     'hasView'=> true,
     *     'order'  => '',
     *     'icon'   => '',
     *     'remark' => '认证列表',
     *     'param'  => ''
     * )
     */
	public function index(){
		$Authe = new AutheModel();
		$Authes = $Authe->select();
		$this->assign('authes',$Authes);
		return $this->fetch();
	}

	public function details(){
		return $this->fetch();
	}

    /**
     * 添加导航
     * @adminMenu(
     *     'name'   => '添加认证',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '添加认证',
     *     'param'  => ''
     * )
     */
	public function add(){
		return $this->fetch();
	}

    /**
     * 添加认证提交保存
     * @adminMenu(
     *     'name'   => '添加认证提交保存',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '添加认证提交保存',
     *     'param'  => ''
     * )
     */
	public function addPost(){
        $Authe = new AutheModel();
        $arrData  = $this->request->post();
        if (empty($arrData["is_hot"])) {
            $arrData["is_hot"] = 0;
        } else {
            $Authe->where("is_hot", 1)->update(["is_hot" => 0]);
        }
        $arrData['add_time'] = time();
        $Authe->insert($arrData);
        $this->success(lang("EDIT_SUCCESS"), url("Authe/index"));
	}

    /**
     * 编辑认证
     * @adminMenu(
     *     'name'   => '编辑认证',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '编辑认证',
     *     'param'  => ''
     * )
     */
    public function edit()
    {
        $Authe = new AutheModel();
        $intId    = $this->request->param("id", 0, 'intval');

        $obj = $Authe->where("id", $intId)->find();
        $arrData = $obj ? $obj->toArray() : [];

        $this->assign($arrData);
        return $this->fetch();
    }

       /**
     * 编辑认证提交保存
     * @adminMenu(
     *     'name'   => '编辑认证提交保存',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '编辑认证提交保存',
     *     'param'  => ''
     * )
     */
    public function editPost()
    {

        $Authe = new AutheModel();
        $arrData  = $this->request->post();

        if (empty($arrData["is_hot"])) {
            $arrData["is_hot"] = 0;
        } else {
            $Authe->where("is_hot", 1)->update(["is_hot" => 0]);
        }

        $Authe->allowField(true)->where("id", intval($arrData["id"]))->update($arrData);
        $this->success(lang("EDIT_SUCCESS"), url("Authe/index"));

    }

    /**
     * 删除认证
     * @adminMenu(
     *     'name'   => '删除认证',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '删除认证',
     *     'param'  => ''
     * )
     */
    public function delete()
    {
        $Authe = new AutheModel();
        $intId    = $this->request->param("id", 0, "intval");

        if (empty($intId)) {
            $this->error(lang("NO_ID"));
        }

        $Authe->where("id", $intId)->delete();
        $this->success(lang("DELETE_SUCCESS"), url("Authe/index"));

    }
}