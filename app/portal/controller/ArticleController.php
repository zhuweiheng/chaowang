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
use app\portal\service\PostService;
use app\portal\model\PortalPostModel;
use think\Db;

class ArticleController extends HomeBaseController
{
    /**
     * 文章详情
     * @return mixed
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function index()
    {

        $portalCategoryModel = new PortalCategoryModel();
        $postService         = new PostService();

        $articleId  = $this->request->param('id', 0, 'intval');
        $categoryId = $this->request->param('cid', 0, 'intval');
        $article    = $postService->publishedArticle($articleId, $categoryId);

        if (empty($article)) {
            abort(404, '文章不存在!');
        }


        $prevArticle = $postService->publishedPrevArticle($articleId, $categoryId);
        $nextArticle = $postService->publishedNextArticle($articleId, $categoryId);

        $tplName = 'article';

        if (empty($categoryId)) {
            $categories = $article['categories'];

            if (count($categories) > 0) {
                $this->assign('category', $categories[0]);
            } else {
                abort(404, '文章未指定分类!');
            }

        } else {
            $category = $portalCategoryModel->where('id', $categoryId)->where('status', 1)->find();
            if (empty($category)) {
                abort(404, '文章不存在!');
            }

            $this->assign('category', $category);

            $tplName = empty($category["one_tpl"]) ? $tplName : $category["one_tpl"];
        }

        Db::name('portal_post')->where('id', $articleId)->setInc('post_hits');

        //取出文章所有标签
        $tagData = DB::name('PortalTagPost')->alias('a')->where(['post_id'=>$articleId,'a.status'=>'1'])->join('cmf_portal_tag b','a.tag_id = b.id')->select()->toArray();
           

        hook('portal_before_assign_article', $article);

        $factoryHot = Db::name('PortalCategoryPost')->alias('a')->where(['category_id'=>'1','status'=>'1'])->join('cmf_portal_post b','a.post_id = b.id')->field('post_title,post_id,recommended,thumbnail')->order('post_hits')->limit(6)->select();
        $this->assign('factoryHot',$factoryHot);
        //处理关键词字符串转换数组
        if(!empty($article['post_keywords'])){
            $article['post_keywords'] = explode(',',$article['post_keywords'] );
            $PostModel = new PortalPostModel();
            $ralates = $PostModel->ralates($article['post_keywords']);
        }else{
            $ralates = DB::name('PortalPost')->where('post_status','1')->order('id')->limit(10)->select()->toArray();          
        }

        //取出页面联系电话单页数据
        $telData = DB::name('PortalPost')->where('id','26')->find();
        $ycSuccessData = DB::name('PortalPost')->where('id','27')->find();
        $this->assign('ycSuccessData',$ycSuccessData);
        $this->assign('telData',$telData);
        $this->assign('tagData',$tagData);
        $this->assign('ralates',$ralates);
        $this->assign('article', $article);
        $this->assign('prev_article', $prevArticle);
        $this->assign('next_article', $nextArticle);

        $tplName = empty($article['more']['template']) ? $tplName : $article['more']['template'];
        return $this->fetch();
        // return $this->fetch("/$tplName");
    }

    // 文章点赞
    public function doLike()
    {
        $this->checkUserLogin();
        $articleId = $this->request->param('id', 0, 'intval');


        $canLike = cmf_check_user_action("posts$articleId", 1);

        if ($canLike) {
            Db::name('portal_post')->where('id', $articleId)->setInc('post_like');

            $this->success("赞好啦！");
        } else {
            $this->error("您已赞过啦！");
        }
    }

    public function aboutus(){
        $this-fetch();
    }

}
