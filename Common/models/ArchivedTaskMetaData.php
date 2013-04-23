<?php
// DO NOT EDIT! Generated by Protobuf-PHP protoc plugin 0.9.4
// Source: ArchivedTaskMetaData.proto
//   Date: 2013-04-23 09:05:55

namespace  {

  class ArchivedTaskMetaData extends \DrSlump\Protobuf\Message {

    /**  @var int */
    public $archivedTaskId = null;
    
    /**  @var int */
    public $version = null;
    
    /**  @var string */
    public $fileName = null;
    
    /**  @var string */
    public $contentType = null;
    
    /**  @var string */
    public $uploadTime = null;
    
    /**  @var int */
    public $userIdClaimed = null;
    
    /**  @var int */
    public $userIdArchived = null;
    
    /**  @var string */
    public $prerequisites = null;
    
    /**  @var int */
    public $userIdTaskCreator = null;
    
    /**  @var string */
    public $archivedDate = null;
    

    /** @var \Closure[] */
    protected static $__extensions = array();

    public static function descriptor()
    {
      $descriptor = new \DrSlump\Protobuf\Descriptor(__CLASS__, '.ArchivedTaskMetaData');

      // OPTIONAL INT32 archivedTaskId = 1
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 1;
      $f->name      = "archivedTaskId";
      $f->type      = \DrSlump\Protobuf::TYPE_INT32;
      $f->rule      = \DrSlump\Protobuf::RULE_OPTIONAL;
      $descriptor->addField($f);

      // OPTIONAL INT32 version = 2
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 2;
      $f->name      = "version";
      $f->type      = \DrSlump\Protobuf::TYPE_INT32;
      $f->rule      = \DrSlump\Protobuf::RULE_OPTIONAL;
      $descriptor->addField($f);

      // OPTIONAL STRING fileName = 3
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 3;
      $f->name      = "fileName";
      $f->type      = \DrSlump\Protobuf::TYPE_STRING;
      $f->rule      = \DrSlump\Protobuf::RULE_OPTIONAL;
      $descriptor->addField($f);

      // OPTIONAL STRING contentType = 4
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 4;
      $f->name      = "contentType";
      $f->type      = \DrSlump\Protobuf::TYPE_STRING;
      $f->rule      = \DrSlump\Protobuf::RULE_OPTIONAL;
      $descriptor->addField($f);

      // OPTIONAL STRING uploadTime = 5
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 5;
      $f->name      = "uploadTime";
      $f->type      = \DrSlump\Protobuf::TYPE_STRING;
      $f->rule      = \DrSlump\Protobuf::RULE_OPTIONAL;
      $descriptor->addField($f);

      // OPTIONAL INT32 userIdClaimed = 6
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 6;
      $f->name      = "userIdClaimed";
      $f->type      = \DrSlump\Protobuf::TYPE_INT32;
      $f->rule      = \DrSlump\Protobuf::RULE_OPTIONAL;
      $descriptor->addField($f);

      // OPTIONAL INT32 userIdArchived = 7
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 7;
      $f->name      = "userIdArchived";
      $f->type      = \DrSlump\Protobuf::TYPE_INT32;
      $f->rule      = \DrSlump\Protobuf::RULE_OPTIONAL;
      $descriptor->addField($f);

      // OPTIONAL STRING prerequisites = 8
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 8;
      $f->name      = "prerequisites";
      $f->type      = \DrSlump\Protobuf::TYPE_STRING;
      $f->rule      = \DrSlump\Protobuf::RULE_OPTIONAL;
      $descriptor->addField($f);

      // OPTIONAL INT32 userIdTaskCreator = 9
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 9;
      $f->name      = "userIdTaskCreator";
      $f->type      = \DrSlump\Protobuf::TYPE_INT32;
      $f->rule      = \DrSlump\Protobuf::RULE_OPTIONAL;
      $descriptor->addField($f);

      // OPTIONAL STRING archivedDate = 10
      $f = new \DrSlump\Protobuf\Field();
      $f->number    = 10;
      $f->name      = "archivedDate";
      $f->type      = \DrSlump\Protobuf::TYPE_STRING;
      $f->rule      = \DrSlump\Protobuf::RULE_OPTIONAL;
      $descriptor->addField($f);

      foreach (self::$__extensions as $cb) {
        $descriptor->addField($cb(), true);
      }

      return $descriptor;
    }

    /**
     * Check if <archivedTaskId> has a value
     *
     * @return boolean
     */
    public function hasArchivedTaskId(){
      return $this->_has(1);
    }
    
    /**
     * Clear <archivedTaskId> value
     *
     * @return \ArchivedTaskMetaData
     */
    public function clearArchivedTaskId(){
      return $this->_clear(1);
    }
    
    /**
     * Get <archivedTaskId> value
     *
     * @return int
     */
    public function getArchivedTaskId(){
      return $this->_get(1);
    }
    
    /**
     * Set <archivedTaskId> value
     *
     * @param int $value
     * @return \ArchivedTaskMetaData
     */
    public function setArchivedTaskId( $value){
      return $this->_set(1, $value);
    }
    
    /**
     * Check if <version> has a value
     *
     * @return boolean
     */
    public function hasVersion(){
      return $this->_has(2);
    }
    
    /**
     * Clear <version> value
     *
     * @return \ArchivedTaskMetaData
     */
    public function clearVersion(){
      return $this->_clear(2);
    }
    
    /**
     * Get <version> value
     *
     * @return int
     */
    public function getVersion(){
      return $this->_get(2);
    }
    
    /**
     * Set <version> value
     *
     * @param int $value
     * @return \ArchivedTaskMetaData
     */
    public function setVersion( $value){
      return $this->_set(2, $value);
    }
    
    /**
     * Check if <fileName> has a value
     *
     * @return boolean
     */
    public function hasFileName(){
      return $this->_has(3);
    }
    
    /**
     * Clear <fileName> value
     *
     * @return \ArchivedTaskMetaData
     */
    public function clearFileName(){
      return $this->_clear(3);
    }
    
    /**
     * Get <fileName> value
     *
     * @return string
     */
    public function getFileName(){
      return $this->_get(3);
    }
    
    /**
     * Set <fileName> value
     *
     * @param string $value
     * @return \ArchivedTaskMetaData
     */
    public function setFileName( $value){
      return $this->_set(3, $value);
    }
    
    /**
     * Check if <contentType> has a value
     *
     * @return boolean
     */
    public function hasContentType(){
      return $this->_has(4);
    }
    
    /**
     * Clear <contentType> value
     *
     * @return \ArchivedTaskMetaData
     */
    public function clearContentType(){
      return $this->_clear(4);
    }
    
    /**
     * Get <contentType> value
     *
     * @return string
     */
    public function getContentType(){
      return $this->_get(4);
    }
    
    /**
     * Set <contentType> value
     *
     * @param string $value
     * @return \ArchivedTaskMetaData
     */
    public function setContentType( $value){
      return $this->_set(4, $value);
    }
    
    /**
     * Check if <uploadTime> has a value
     *
     * @return boolean
     */
    public function hasUploadTime(){
      return $this->_has(5);
    }
    
    /**
     * Clear <uploadTime> value
     *
     * @return \ArchivedTaskMetaData
     */
    public function clearUploadTime(){
      return $this->_clear(5);
    }
    
    /**
     * Get <uploadTime> value
     *
     * @return string
     */
    public function getUploadTime(){
      return $this->_get(5);
    }
    
    /**
     * Set <uploadTime> value
     *
     * @param string $value
     * @return \ArchivedTaskMetaData
     */
    public function setUploadTime( $value){
      return $this->_set(5, $value);
    }
    
    /**
     * Check if <userIdClaimed> has a value
     *
     * @return boolean
     */
    public function hasUserIdClaimed(){
      return $this->_has(6);
    }
    
    /**
     * Clear <userIdClaimed> value
     *
     * @return \ArchivedTaskMetaData
     */
    public function clearUserIdClaimed(){
      return $this->_clear(6);
    }
    
    /**
     * Get <userIdClaimed> value
     *
     * @return int
     */
    public function getUserIdClaimed(){
      return $this->_get(6);
    }
    
    /**
     * Set <userIdClaimed> value
     *
     * @param int $value
     * @return \ArchivedTaskMetaData
     */
    public function setUserIdClaimed( $value){
      return $this->_set(6, $value);
    }
    
    /**
     * Check if <userIdArchived> has a value
     *
     * @return boolean
     */
    public function hasUserIdArchived(){
      return $this->_has(7);
    }
    
    /**
     * Clear <userIdArchived> value
     *
     * @return \ArchivedTaskMetaData
     */
    public function clearUserIdArchived(){
      return $this->_clear(7);
    }
    
    /**
     * Get <userIdArchived> value
     *
     * @return int
     */
    public function getUserIdArchived(){
      return $this->_get(7);
    }
    
    /**
     * Set <userIdArchived> value
     *
     * @param int $value
     * @return \ArchivedTaskMetaData
     */
    public function setUserIdArchived( $value){
      return $this->_set(7, $value);
    }
    
    /**
     * Check if <prerequisites> has a value
     *
     * @return boolean
     */
    public function hasPrerequisites(){
      return $this->_has(8);
    }
    
    /**
     * Clear <prerequisites> value
     *
     * @return \ArchivedTaskMetaData
     */
    public function clearPrerequisites(){
      return $this->_clear(8);
    }
    
    /**
     * Get <prerequisites> value
     *
     * @return string
     */
    public function getPrerequisites(){
      return $this->_get(8);
    }
    
    /**
     * Set <prerequisites> value
     *
     * @param string $value
     * @return \ArchivedTaskMetaData
     */
    public function setPrerequisites( $value){
      return $this->_set(8, $value);
    }
    
    /**
     * Check if <userIdTaskCreator> has a value
     *
     * @return boolean
     */
    public function hasUserIdTaskCreator(){
      return $this->_has(9);
    }
    
    /**
     * Clear <userIdTaskCreator> value
     *
     * @return \ArchivedTaskMetaData
     */
    public function clearUserIdTaskCreator(){
      return $this->_clear(9);
    }
    
    /**
     * Get <userIdTaskCreator> value
     *
     * @return int
     */
    public function getUserIdTaskCreator(){
      return $this->_get(9);
    }
    
    /**
     * Set <userIdTaskCreator> value
     *
     * @param int $value
     * @return \ArchivedTaskMetaData
     */
    public function setUserIdTaskCreator( $value){
      return $this->_set(9, $value);
    }
    
    /**
     * Check if <archivedDate> has a value
     *
     * @return boolean
     */
    public function hasArchivedDate(){
      return $this->_has(10);
    }
    
    /**
     * Clear <archivedDate> value
     *
     * @return \ArchivedTaskMetaData
     */
    public function clearArchivedDate(){
      return $this->_clear(10);
    }
    
    /**
     * Get <archivedDate> value
     *
     * @return string
     */
    public function getArchivedDate(){
      return $this->_get(10);
    }
    
    /**
     * Set <archivedDate> value
     *
     * @param string $value
     * @return \ArchivedTaskMetaData
     */
    public function setArchivedDate( $value){
      return $this->_set(10, $value);
    }
  }
}

