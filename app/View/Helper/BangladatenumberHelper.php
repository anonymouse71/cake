<?php

//******************************************************
//** Developed By Shah Chandon. 2010
//** License: GPL General Public License
//** Please keep all of the above lines intact.
//******************************************************

//******************************************************
//** USAGE:
// echo convert_to_bangla_number(10);
// echo overt_to_bangla_date("2010-03-31 12:35:40 AM");
//******************************************************

//error_reporting(0);
class BangladatenumberHelper extends AppHelper
{
    function englishToBanglaNumber($input){
        $bn_digits=array('০','১','২','৩','৪','৫','৬','৭','৮','৯');
        $output = str_replace(range(0, 9),$bn_digits, $input);
        return $output;
    }

    function convert_to_bangla_number($eng_number)
    {
        //convert the number to a string
        $str_eng_number = $eng_number . "";
        $output_str = "";
        for ($i = 0; $i < strlen($str_eng_number); $i++) {

            if (is_numeric(substr($str_eng_number, $i, 1))) {
                $output_str .= $this->bangla_number_bit_html(substr($str_eng_number, $i, 1));
            } else {
                $output_str .= substr($str_eng_number, $i, 1);
            }

        }

        return $output_str;
    }

    function bangla_number_bit_html($eng_number_bit)
    {
        $zero_base = 34;
        settype($eng_number_bit, "integer");
        $mydigit = ($eng_number_bit - 0) + $zero_base;
        //echo "\n$eng_number_bit = $mydigit";
        return "&#25$mydigit;"; //so if 1 is passed it will look ile (1-0)+4 = 5


    }

    function covert_to_bangla_date($eng_date, $date_formt = "D-d-n-Y-G-g:i:s")
    {
        $arr_byear[0] = "&#2460;&#2494;&#2472;&#2497;&#2527;&#2494;&#2480;&#2495;";//jan
        $arr_byear[1] = "&#2475;&#2503;&#2476;&#2509;&#2480;&#2497;&#2527;&#2494;&#2480;&#2495;";//feb
        $arr_byear[2] = "&#2478;&#2494;&#2480;&#2509;&#2458;";//mar
        $arr_byear[3] = "&#2447;&#2474;&#2509;&#2480;&#2495;&#2482;";//apr

        $arr_byear[4] = "&#2478;&#2503;";//may
        $arr_byear[5] = "&#2460;&#2497;&#2472;";//jun
        $arr_byear[6] = "&#2460;&#2497;&#2482;&#2494;&#2439;";//july
        $arr_byear[7] = "&#2438;&#2455;&#2488;&#2509;&#2463;";//aug

        $arr_byear[8] = "&#2488;&#2474;&#2509;&#2468;&#2478;&#2476;&#2494;&#2480;";//sept
        $arr_byear[9] = "&#2437;&#2453;&#2509;&#2463;&#2476;&#2494;&#2480;";//oct
        $arr_byear[10] = "&#2472;&#2476;&#2478;&#2476;&#2494;&#2480;";//novem
        $arr_byear[11] = "&#2470;&#2486;&#2478;&#2509;&#2476;&#2494;&#2480;";//decem

        $arr_bweekday["sun"] = "&#2480;&#2476;&#2495;&#2476;&#2494;&#2480;";//sun
        $arr_bweekday["mon"] = "&#2488;&#2507;&#2478;&#2476;&#2494;&#2480;";//mon
        $arr_bweekday["tue"] = "&#2478;&#2457;&#2509;&#2455;&#2482;&#2476;&#2494;&#2480;";//tue
        $arr_bweekday["wed"] = "&#2476;&#2497;&#2471;&#2476;&#2494;&#2480;";//wed
        $arr_bweekday["thu"] = "&#2476;&#2499;&#2489;&#2488;&#2509;&#2474;&#2468;&#2495;&#2476;&#2494;&#2480;";//thu
        $arr_bweekday["fri"] = "&#2486;&#2497;&#2453;&#2509;&#2480;&#2476;&#2494;&#2480;";//fri
        $arr_bweekday["sat"] = "&#2486;&#2472;&#2495;&#2476;&#2494;&#2480;";//sat

        $arr_bangla_day_periods[0] = "&#2455;&#2477;&#2495;&#2480; &#2480;&#2494;&#2468;"; //govir raat
        $arr_bangla_day_periods[1] = "&#2477;&#2507;&#2480;"; //bhor
        $arr_bangla_day_periods[2] = "&#2488;&#2453;&#2494;&#2482;"; //sokal
        $arr_bangla_day_periods[3] = "&#2470;&#2497;&#2474;&#2497;&#2480;"; //Dupur
        $arr_bangla_day_periods[4] = "&#2476;&#2495;&#2453;&#2494;&#2482;"; //bikal
        $arr_bangla_day_periods[5] = "&#2488;&#2472;&#2509;&#2471;&#2509;&#2479;&#2494;"; //sondha
        $arr_bangla_day_periods[6] = "&#2480;&#2494;&#2468;"; //raat


        $dt_client_date = date($date_formt, strtotime($eng_date)); //convert the date in such a fashion so that we can explode by dash (-)
        $dt_bits = explode("-", $dt_client_date);
        $dt_output = "";
        $dt_output .= $arr_byear[$dt_bits[2] - 1];//$dt_bits[2] would contain Numeric representation of a month, without leading zeros 1 through 12
        $dt_output .= " ";
        $dt_output .= $this->convert_to_bangla_number($dt_bits[1]); //$dt_bits[1] will contain the day of month
        $dt_output .= ", ";
        $dt_output .= $this->convert_to_bangla_number($dt_bits[3]); //$dt_bits[3] will contain the year

        ///$dt_output .= ", ";
        ///$dt_output .= $arr_bweekday[strtolower($dt_bits[0])];//$dt_bits[0] contains Sun/mon etc.

        $dt_hour_bit = $dt_bits[4];//$dt_bits[4] will contain G
        //$dt_output .= "[".($dt_hour_bit>=0 && $dt_hour_bit<5)."]";
        $day_period = "";
        if ($dt_hour_bit >= 0 && $dt_hour_bit < 5) {
            //govir raat
            $day_period = $arr_bangla_day_periods[0];
        } else if ($dt_hour_bit >= 5 && $dt_hour_bit < 8) {
            //bhor
            $day_period = $arr_bangla_day_periods[1];
        } else if ($dt_hour_bit >= 8 && $dt_hour_bit < 12) {
            //sokal
            $day_period = $arr_bangla_day_periods[2];
        } else if ($dt_hour_bit >= 12 && $dt_hour_bit < 16) {
            //dupur
            $day_period = $arr_bangla_day_periods[3];
        } else if ($dt_hour_bit >= 16 && $dt_hour_bit < 18) {
            //bikal
            $day_period = $arr_bangla_day_periods[4];
        } else if ($dt_hour_bit >= 18 && $dt_hour_bit < 19) {
            //sondha
            $day_period = $arr_bangla_day_periods[5];
        } else if ($dt_hour_bit >= 19 && $dt_hour_bit < 24) {
            //raat
            $day_period = $arr_bangla_day_periods[6];
        }
        ///$dt_output .= " $day_period; ";

        ///$dt_output .= $this->convert_to_bangla_number($dt_bits[5]); //$dt_bits[5] will contain g:i:s
        return $dt_output;

    }

}