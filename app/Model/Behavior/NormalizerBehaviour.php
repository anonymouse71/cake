<?php

class NormalizerBehavior extends ModelBehavior {

    public $name = 'Normalizer';

    /*
        Initiate behaviour for the model using specified settings.
     */
    function setup(&$Model, $settings = array())
    {
    }

    /*
        Run before a model is saved.
     */
    function beforeSave(&$Model)
    {
    }


    function normalize_date(&$Model, $date_str)
    {
        return date('Y-m-d', strtotime(trim($date_str)));
    }


    function test(&$Model)
    {
        $date = $this->normalize_date($Model, date('Y-m-d'));
        printf('testing behavior %s for model %s on %s', __CLASS__, $Model->name, $date);
    }
}

?>