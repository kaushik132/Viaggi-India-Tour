<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use App\Models\Testimonial;


class TestimonialController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Testimonial';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Testimonial());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('company', __('Company'));
        $grid->column('title', __('Title'));
        $grid->column('image', __('Image'))->image('/uploads/',100, 100);
        $grid->column('position', __('Position'));
        $grid->column('message', __('Message'));
        $grid->column('review_date', __('Review date'));
        $grid->column('description', __('Description'));
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
        $show = new Show(Testimonial::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('company', __('Company'));
        $show->field('title', __('Title'));
        $show->field('image', __('Image'));
        $show->field('position', __('Position'));
        $show->field('message', __('Message'));
        $show->field('review_date', __('Review date'));
        $show->field('description', __('Description'));
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
        $form = new Form(new Testimonial());

        $form->text('name', __('Name'));
        $form->text('company', __('Company'));
        $form->text('title', __('Title'));
        $form->image('image', __('Image'));
        $form->text('position', __('Position'));
        $form->text('message', __('Message'));
        $form->date('review_date', __('Review date'));
        $form->textarea('description', __('Description'));

        return $form;
    }
}
