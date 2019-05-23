<?php
namespace app\admin\controller;
use cmf\controller\AdminBaseController;
use app\admin\model\FactoryModel;
use think\Db;

class FactoryController extends AdminBaseController{

    /**
     * 验厂项目管理
     * @adminMenu(
     *     'name'   => '验厂列表',
     *     'parent' => 'admin/Setting/default',
     *     'display'=> true,
     *     'hasView'=> true,
     *     'order'  => '',
     *     'icon'   => '',
     *     'remark' => '验厂列表',
     *     'param'  => ''
     * )
     */
	public function index(){
		$Factory = new FactoryModel();
		$factorys = $Factory->select();
		$this->assign('factorys',$factorys);
		return $this->fetch();
	}

	public function details(){
		return $this->fetch();
	}

    /**
     * 添加导航
     * @adminMenu(
     *     'name'   => '添加验厂',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '添加验厂',
     *     'param'  => ''
     * )
     */
	public function add(){
		return $this->fetch();
	}

    /**
     * 添加验厂提交保存
     * @adminMenu(
     *     'name'   => '添加验厂提交保存',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '添加验厂提交保存',
     *     'param'  => ''
     * )
     */
	public function addPost(){
        $Factory = new FactoryModel();
        $arrData  = $this->request->post();
        if (empty($arrData["is_hot"])) {
            $arrData["is_hot"] = 0;
        } else {
            $Factory->where("is_hot", 1)->update(["is_hot" => 0]);
        }
        $arrData['add_time'] = time();
        $Factory->insert($arrData);
        $this->success(lang("EDIT_SUCCESS"), url("Factory/index"));
	}

    /**
     * 编辑验厂
     * @adminMenu(
     *     'name'   => '编辑验厂',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '编辑验厂',
     *     'param'  => ''
     * )
     */
    public function edit()
    {
        $Factory = new FactoryModel();
        $intId    = $this->request->param("id", 0, 'intval');

        $obj = $Factory->where("id", $intId)->find();
        $arrData = $obj ? $obj->toArray() : [];

        $this->assign($arrData);
        return $this->fetch();
    }

       /**
     * 编辑验厂提交保存
     * @adminMenu(
     *     'name'   => '编辑验厂提交保存',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '编辑验厂提交保存',
     *     'param'  => ''
     * )
     */
    public function editPost()
    {

        $Factory = new FactoryModel();
        $arrData  = $this->request->post();

        if (empty($arrData["is_hot"])) {
            $arrData["is_hot"] = 0;
        } else {
            $Factory->where("is_hot", 1)->update(["is_hot" => 0]);
        }

        $Factory->allowField(true)->where("id", intval($arrData["id"]))->update($arrData);
        $this->success(lang("EDIT_SUCCESS"), url("factory/index"));

    }

    /**
     * 删除验厂
     * @adminMenu(
     *     'name'   => '删除验厂',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '删除验厂',
     *     'param'  => ''
     * )
     */
    public function delete()
    {
        $Factory = new FactoryModel();
        $intId    = $this->request->param("id", 0, "intval");

        if (empty($intId)) {
            $this->error(lang("NO_ID"));
        }

        $Factory->where("id", $intId)->delete();
        $this->success(lang("DELETE_SUCCESS"), url("factory/index"));

    }
}