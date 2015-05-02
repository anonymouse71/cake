<?php
App::uses('Controller', 'Controller');

class AppController extends Controller {

    public $helpers = array('Form','Time','Html', 'Session', 'Js','Time', 'Usermgmt.UserAuth','TinyMCE.TinyMCE','Bangladatenumber');
    public $components = array('Session','RequestHandler','Email', 'Usermgmt.UserAuth');
    public $paginate = array(
        'limit' => 99999
    );
    //public $theme = 'bou';
	private $_user = '';
    #public $_uploadedimg = '';


        public function beforeFilter(){

			$this->userAuth();
            $this->_user = $this->UserAuth->getUser();
            $this->set('_user', $this->_user);
            
            $_uploadedimg = $this->webroot.'files/user/photo/';
            $this->set('uploadedimge', $_uploadedimg);

            $this->pickLayout();

            $this->set('col_md_val',8);

            $this->set('leftPane', 0);
            $this->set('mainContent', 12);
            $this->set('rightPane', 0);
            $this->set('containerStyle', 'container');//or container-fluid


			parent::beforeFilter();

		}
		
		private function userAuth(){
			$this->UserAuth->beforeFilter($this);
		}

        private function pickLayout(){

            $_frontActions = array('topicsView');

            $_usrMgmt = array('home','login','forgotPassword','register','updateProfile','myprofile','changePassword','catalog','detail');

            if(in_array($this->params['action'], $_frontActions))
            {
                $this->layout = 'default';

			} else if(in_array($this->params['action'], $_usrMgmt) ){

                $this->layout = 'oneColumn';

            }else{
                $this->layout = 'default-admin';
            }

            //student
            if(!empty($this->_user) && strtolower($this->_user['UserGroup']['name']) == 'student'){

                $this->layout = 'oneColumn';
            }
	    }

	}

