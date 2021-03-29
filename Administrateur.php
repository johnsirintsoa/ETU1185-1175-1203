<?php
   //require_once 'Connection.php';
    class Administrateur{
        private $id;
        private $email;
        private $pwd;

        public function getId()
        {
                return $this->id;
        }

        public function setId($id)
        {
                $this->id = $id;
        }
        
        public function setEmail($email){
            $this->email = $email;
        }

        public function getEmail(){
            return $this->email;
        }

        public function getPwd(){
            return $this->pwd;
        }

        public function setPwd($pwd){
            $this->pwd = $pwd;
        }
    }
?>