<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Package;

class PackageController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Package';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Package());

        $grid->column('id', __('Id'));
        $grid->column('region_id', __('Region id'));
        $grid->column('budget_id', __('Budget id'));
        $grid->column('duration_id', __('Duration id'));
        $grid->column('traveler_id', __('Traveler id'));
        $grid->column('experience_id', __('Experience id'));
        $grid->column('title', __('Title'));
        $grid->column('slug', __('Slug'));
        $grid->column('destination_name', __('Destination name'));
        $grid->column('short_description', __('Short description'));
        $grid->column('tour_days', __('Tour days'));
        $grid->column('tour_location', __('Tour location'));
        $grid->column('description', __('Description'));
        $grid->column('price', __('Price'));
        $grid->column('stars', __('Stars'));
        $grid->column('reviews', __('Reviews'));
        $grid->column('attractions', __('Attractions'));
        $grid->column('itinerary', __('Itinerary'));
        $grid->column('thumnail_image', __('Thumnail image'));
        $grid->column('banner_image', __('Banner image'));
        $grid->column('gallery', __('Gallery'));
        $grid->column('seo_title', __('Seo title'));
        $grid->column('seo_description', __('Seo description'));
        $grid->column('seo_keyword', __('Seo keyword'));
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
        $show = new Show(Package::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('region_id', __('Region id'));
        $show->field('budget_id', __('Budget id'));
        $show->field('duration_id', __('Duration id'));
        $show->field('traveler_id', __('Traveler id'));
        $show->field('experience_id', __('Experience id'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('destination_name', __('Destination name'));
        $show->field('short_description', __('Short description'));
        $show->field('tour_days', __('Tour days'));
        $show->field('tour_location', __('Tour location'));
        $show->field('description', __('Description'));
        $show->field('price', __('Price'));
        $show->field('stars', __('Stars'));
        $show->field('reviews', __('Reviews'));
        $show->field('attractions', __('Attractions'));
        $show->field('itinerary', __('Itinerary'));
        $show->field('thumnail_image', __('Thumnail image'));
        $show->field('banner_image', __('Banner image'));
        $show->field('gallery', __('Gallery'));
        $show->field('seo_title', __('Seo title'));
        $show->field('seo_description', __('Seo description'));
        $show->field('seo_keyword', __('Seo keyword'));
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
        $form = new Form(new Package());

        $form->text('region_id', __('Region id'));
        $form->text('budget_id', __('Budget id'));
        $form->text('duration_id', __('Duration id'));
        $form->text('traveler_id', __('Traveler id'));
        $form->text('experience_id', __('Experience id'));
        $form->text('title', __('Title'));
        $form->text('slug', __('Slug'));
        $form->text('destination_name', __('Destination name'));
        $form->textarea('short_description', __('Short description'));
        $form->text('tour_days', __('Tour days'));
        $form->text('tour_location', __('Tour location'));
        $form->textarea('description', __('Description'));
        $form->text('price', __('Price'));
        $form->text('stars', __('Stars'));
        $form->text('reviews', __('Reviews'));
        $form->textarea('attractions', __('Attractions'));
        $form->text('itinerary', __('Itinerary'));
        $form->text('thumnail_image', __('Thumnail image'));
        $form->text('banner_image', __('Banner image'));
        $form->textarea('gallery', __('Gallery'));
        $form->textarea('seo_title', __('Seo title'));
        $form->textarea('seo_description', __('Seo description'));
        $form->textarea('seo_keyword', __('Seo keyword'));

        return $form;
    }
}
