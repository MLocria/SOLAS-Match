<?php
namespace SolasMatch\Common\Protobufs\Models;

// @@protoc_insertion_point(namespace:.SolasMatch.Common.Protobufs.Models.BannedOrganisation)

/**
 * Generated by the protocol buffer compiler.  DO NOT EDIT!
 * source: BannedOrganisation.proto
 *
 * -*- magic methods -*-
 *
 * @method string getOrgId()
 * @method void setOrgId(\string $value)
 * @method string getUserIdAdmin()
 * @method void setUserIdAdmin(\string $value)
 * @method string getBanType()
 * @method void setBanType(\string $value)
 * @method string getComment()
 * @method void setComment(\string $value)
 * @method string getBannedDate()
 * @method void setBannedDate(\string $value)
 */
class BannedOrganisation extends \ProtocolBuffers\Message
{
  // @@protoc_insertion_point(traits:.SolasMatch.Common.Protobufs.Models.BannedOrganisation)
  
  /**
   * @var string $orgId
   * @tag 1
   * @label optional
   * @type \ProtocolBuffers::TYPE_INT32
   **/
  protected $orgId;
  
  /**
   * @var string $userIdAdmin
   * @tag 2
   * @label optional
   * @type \ProtocolBuffers::TYPE_INT32
   **/
  protected $userIdAdmin;
  
  /**
   * @var string $banType
   * @tag 3
   * @label optional
   * @type \ProtocolBuffers::TYPE_STRING
   **/
  protected $banType;
  
  /**
   * @var string $comment
   * @tag 4
   * @label optional
   * @type \ProtocolBuffers::TYPE_STRING
   **/
  protected $comment;
  
  /**
   * @var string $bannedDate
   * @tag 5
   * @label optional
   * @type \ProtocolBuffers::TYPE_STRING
   **/
  protected $bannedDate;
  
  
  // @@protoc_insertion_point(properties_scope:.SolasMatch.Common.Protobufs.Models.BannedOrganisation)

  // @@protoc_insertion_point(class_scope:.SolasMatch.Common.Protobufs.Models.BannedOrganisation)

  /**
   * get descriptor for protocol buffers
   * 
   * @return \ProtocolBuffersDescriptor
   */
  public static function getDescriptor()
  {
    static $descriptor;
    
    if (!isset($descriptor)) {
      $desc = new \ProtocolBuffers\DescriptorBuilder();
      $desc->addField(1, new \ProtocolBuffers\FieldDescriptor(array(
        "type"     => \ProtocolBuffers::TYPE_INT32,
        "name"     => "orgId",
        "required" => false,
        "optional" => true,
        "repeated" => false,
        "packable" => false,
        "default"  => null,
      )));
      $desc->addField(2, new \ProtocolBuffers\FieldDescriptor(array(
        "type"     => \ProtocolBuffers::TYPE_INT32,
        "name"     => "userIdAdmin",
        "required" => false,
        "optional" => true,
        "repeated" => false,
        "packable" => false,
        "default"  => null,
      )));
      $desc->addField(3, new \ProtocolBuffers\FieldDescriptor(array(
        "type"     => \ProtocolBuffers::TYPE_STRING,
        "name"     => "banType",
        "required" => false,
        "optional" => true,
        "repeated" => false,
        "packable" => false,
        "default"  => "",
      )));
      $desc->addField(4, new \ProtocolBuffers\FieldDescriptor(array(
        "type"     => \ProtocolBuffers::TYPE_STRING,
        "name"     => "comment",
        "required" => false,
        "optional" => true,
        "repeated" => false,
        "packable" => false,
        "default"  => "",
      )));
      $desc->addField(5, new \ProtocolBuffers\FieldDescriptor(array(
        "type"     => \ProtocolBuffers::TYPE_STRING,
        "name"     => "bannedDate",
        "required" => false,
        "optional" => true,
        "repeated" => false,
        "packable" => false,
        "default"  => "",
      )));
      // @@protoc_insertion_point(builder_scope:.SolasMatch.Common.Protobufs.Models.BannedOrganisation)

      $descriptor = $desc->build();
    }
    return $descriptor;
  }

}
