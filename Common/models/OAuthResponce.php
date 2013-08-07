<?php
// DO NOT EDIT! Generated by Protobuf-PHP protoc plugin 0.9.4
// Source: OAuthResponce.proto
//   Date: 2013-08-06 16:40:19

namespace  {

  class OAuthResponce extends \DrSlump\Protobuf\Message {

    /**  @var string */
    public $token = null;
    
    /**  @var string */
    public $tokenType = null;
    
    /**  @var string */
    public $expires = null;
    
    /**  @var string */
    public $expiresIn = null;
    

    /** @var \Closure[] */
    protected static $__extensions = array();

    public static function descriptor()
    {
      $descriptor = new \DrSlump\Protobuf\Descriptor(__CLASS__, '.OAuthResponce');

      // REQUIRED STRING token = 1
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 1;
      $f->name      = "token";
      $f->type      = \DrSlump\Protobuf::TYPE_STRING;
      $f->rule      = \DrSlump\Protobuf::RULE_REQUIRED;
      $descriptor->addField($f);

      // REQUIRED STRING tokenType = 2
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 2;
      $f->name      = "tokenType";
      $f->type      = \DrSlump\Protobuf::TYPE_STRING;
      $f->rule      = \DrSlump\Protobuf::RULE_REQUIRED;
      $descriptor->addField($f);

      // REQUIRED STRING expires = 3
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 3;
      $f->name      = "expires";
      $f->type      = \DrSlump\Protobuf::TYPE_STRING;
      $f->rule      = \DrSlump\Protobuf::RULE_REQUIRED;
      $descriptor->addField($f);

      // REQUIRED STRING expiresIn = 4
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 4;
      $f->name      = "expiresIn";
      $f->type      = \DrSlump\Protobuf::TYPE_STRING;
      $f->rule      = \DrSlump\Protobuf::RULE_REQUIRED;
      $descriptor->addField($f);

      foreach (self::$__extensions as $cb) {
        $descriptor->addField($cb(), true);
      }

      return $descriptor;
    }

    /**
     * Check if <token> has a value
     *
     * @return boolean
     */
    public function hasToken(){
      return $this->_has(1);
    }
    
    /**
     * Clear <token> value
     *
     * @return \OAuthResponce
     */
    public function clearToken(){
      return $this->_clear(1);
    }
    
    /**
     * Get <token> value
     *
     * @return string
     */
    public function getToken(){
      return $this->_get(1);
    }
    
    /**
     * Set <token> value
     *
     * @param string $value
     * @return \OAuthResponce
     */
    public function setToken( $value){
      return $this->_set(1, $value);
    }
    
    /**
     * Check if <tokenType> has a value
     *
     * @return boolean
     */
    public function hasTokenType(){
      return $this->_has(2);
    }
    
    /**
     * Clear <tokenType> value
     *
     * @return \OAuthResponce
     */
    public function clearTokenType(){
      return $this->_clear(2);
    }
    
    /**
     * Get <tokenType> value
     *
     * @return string
     */
    public function getTokenType(){
      return $this->_get(2);
    }
    
    /**
     * Set <tokenType> value
     *
     * @param string $value
     * @return \OAuthResponce
     */
    public function setTokenType( $value){
      return $this->_set(2, $value);
    }
    
    /**
     * Check if <expires> has a value
     *
     * @return boolean
     */
    public function hasExpires(){
      return $this->_has(3);
    }
    
    /**
     * Clear <expires> value
     *
     * @return \OAuthResponce
     */
    public function clearExpires(){
      return $this->_clear(3);
    }
    
    /**
     * Get <expires> value
     *
     * @return string
     */
    public function getExpires(){
      return $this->_get(3);
    }
    
    /**
     * Set <expires> value
     *
     * @param string $value
     * @return \OAuthResponce
     */
    public function setExpires( $value){
      return $this->_set(3, $value);
    }
    
    /**
     * Check if <expiresIn> has a value
     *
     * @return boolean
     */
    public function hasExpiresIn(){
      return $this->_has(4);
    }
    
    /**
     * Clear <expiresIn> value
     *
     * @return \OAuthResponce
     */
    public function clearExpiresIn(){
      return $this->_clear(4);
    }
    
    /**
     * Get <expiresIn> value
     *
     * @return string
     */
    public function getExpiresIn(){
      return $this->_get(4);
    }
    
    /**
     * Set <expiresIn> value
     *
     * @param string $value
     * @return \OAuthResponce
     */
    public function setExpiresIn( $value){
      return $this->_set(4, $value);
    }
  }
}

