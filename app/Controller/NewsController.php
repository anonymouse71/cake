<?php
App::uses('AppController', 'Controller');
/**
 * News Controller
 *
 * @property News $News
 * @property PaginatorComponent $Paginator
 */
class NewsController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->News->recursive = 0;
		$this->set('news', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->News->exists($id)) {
			throw new NotFoundException(__('Invalid news'));
		}
		$options = array('conditions' => array('News.' . $this->News->primaryKey => $id));
		$this->set('news', $this->News->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
#var_dump($this->request->data); die();

/*Image upload START*/
            $image = $this->request->data['News']['image'];
            $name = explode('.', $image['name']);
            $type = end($name);
            $imagePath = 'files/news/' . String::uuid() . '.' .$type;
            $tmpFile = $image['tmp_name'];

            if ($image['error']) {
                $this->Session->setFlash('Invalid image type or empty!');
                return $this->redirect(array('action' => 'add'));
            }else{
                if(!move_uploaded_file($tmpFile, $imagePath)){
                    $this->Session->setFlash('Image upload failed! Invalid image type or size!');
                    return $this->redirect(array('action' => 'add'));
                }
            }
            $this->request->data['News']['image'] = $imagePath;
/*Image upload END*/


			$this->News->create();
			if ($this->News->save($this->request->data)) {
				$this->Session->setFlash(__('The news has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The news could not be saved. Please, try again.'));
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->News->exists($id)) {
			throw new NotFoundException(__('Invalid news'));
		}
		if ($this->request->is(array('post', 'put'))) {

            /*Image upload START*/
            $image = $this->request->data['News']['image'];

            if ($image['size']) {

                $name = explode('.', $image['name']);
                $type = end($name);
                $imagePath = 'files/photos/' . String::uuid() . '.' .$type;
                $tmpFile = $image['tmp_name'];

                if(move_uploaded_file($tmpFile, $imagePath)){
                    $this->request->data['News']['image'] = $imagePath;

                }else{
                    $this->Session->setFlash('Image upload failed! Invalid image type or size!');
                    return $this->redirect(array('action' => 'add'));
                }
            }else{
                unset($this->request->data['News']['image']);
            }

            /*Image upload END*/


            if ($this->News->save($this->request->data)) {
				$this->Session->setFlash(__('The news has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The news could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('News.' . $this->News->primaryKey => $id));
			$this->request->data = $this->News->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->News->id = $id;
		if (!$this->News->exists()) {
			throw new NotFoundException(__('Invalid news'));
		}
		//$this->request->allowMethod('post', 'delete');

		if ($this->request -> isPost()) {

			if ($this->News->delete()) {
					$this->Session->setFlash(__('The news has been deleted.'));
			} else {
				$this->Session->setFlash(__('The news could not be deleted. Please, try again.'));
			}

		}
		
		return $this->redirect(array('action' => 'index'));
	}
}
