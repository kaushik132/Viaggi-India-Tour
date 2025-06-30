<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Title;

class SeoTitleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Title';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Title());

        $grid->column('id', __('Id'));
        $grid->column('seo_title_home', __('Seo title home'));
        $grid->column('seo_des_home', __('Seo des home'));
        $grid->column('seo_key_home', __('Seo key home'));
        $grid->column('seo_image_home', __('Seo image home'));
        $grid->column('seo_title_contact', __('Seo title contact'));
        $grid->column('seo_des_contact', __('Seo des contact'));
        $grid->column('seo_key_contact', __('Seo key contact'));
        $grid->column('seo_image_contact', __('Seo image contact'));
        $grid->column('seo_title_destination', __('Seo title destination'));
        $grid->column('seo_des_destination', __('Seo des destination'));
        $grid->column('seo_key_destination', __('Seo key destination'));
        $grid->column('seo_image_destination', __('Seo image destination'));
        $grid->column('seo_title_package', __('Seo title package'));
        $grid->column('seo_des_package', __('Seo des package'));
        $grid->column('seo_key_package', __('Seo key package'));
        $grid->column('seo_image_package', __('Seo image package'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Title::findOrFail($id));

   
        $show->field('seo_title_home', __('Seo title home'));
        $show->field('seo_des_home', __('Seo des home'));
        $show->field('seo_key_home', __('Seo key home'));
       
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Title());

        $form->text('seo_title_home', __('Seo title home'));
        $form->textarea('seo_des_home', __('Seo des home'));
        $form->textarea('seo_key_home', __('Seo key home'));
        $form->image('seo_image_home', __('Seo image home'));
        $form->text('seo_title_contact', __('Seo title contact'));
        $form->textarea('seo_des_contact', __('Seo des contact'));
        $form->textarea('seo_key_contact', __('Seo key contact'));
        $form->image('seo_image_contact', __('Seo image contact'));
        $form->text('seo_title_destination', __('Seo title destination'));
        $form->textarea('seo_des_destination', __('Seo des destination'));
        $form->textarea('seo_key_destination', __('Seo key destination'));
        $form->image('seo_image_destination', __('Seo image destination'));
        $form->text('seo_title_package', __('Seo title package'));
        $form->textarea('seo_des_package', __('Seo des package'));
        $form->textarea('seo_key_package', __('Seo key package'));
        $form->image('seo_image_package', __('Seo image package'));

        return $form;
    }
}
