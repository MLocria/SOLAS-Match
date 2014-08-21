<?php
namespace SolasMatch\Common\Protobufs\Emails;

// @@protoc_insertion_point(namespace:.SolasMatch.Common.Protobufs.Emails.OrgMembershipAccepted)

/**
 * Generated by the protocol buffer compiler.  DO NOT EDIT!
 * source: OrgMembershipAccepted.proto
 *
 * -*- magic methods -*-
 *
 * @method \SolasMatch\Common\Protobufs\Emails\EmailMessage\Type getEmailType()
 * @method void setEmailType(\SolasMatch\Common\Protobufs\Emails\EmailMessage\Type $value)
 * @method string getUserId()
 * @method void setUserId(\string $value)
 * @method string getOrgId()
 * @method void setOrgId(\string $value)
 */
class OrgMembershipAccepted extends \ProtocolBuffers\Message
{
  // @@protoc_insertion_point(traits:.SolasMatch.Common.Protobufs.Emails.OrgMembershipAccepted)
  
  /**
   * @var \SolasMatch\Common\Protobufs\Emails\EmailMessage\Type $email_type
   * @tag 1
   * @label required
   * @type \ProtocolBuffers::TYPE_ENUM
   * @see \SolasMatch\Common\Protobufs\Emails\EmailMessage\Type
   **/
  protected $email_type;
  
  /**
   * @var string $user_id
   * @tag 2
   * @label required
   * @type \ProtocolBuffers::TYPE_INT32
   **/
  protected $user_id;
  
  /**
   * @var string $org_id
   * @tag 3
   * @label required
   * @type \ProtocolBuffers::TYPE_INT32
   **/
  protected $org_id;
  
  
  // @@protoc_insertion_point(properties_scope:.SolasMatch.Common.Protobufs.Emails.OrgMembershipAccepted)

  // @@protoc_insertion_point(class_scope:.SolasMatch.Common.Protobufs.Emails.OrgMembershipAccepted)

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
        "type"     => \ProtocolBuffers::TYPE_ENUM,
        "name"     => "email_type",
        "required" => true,
        "optional" => false,
        "repeated" => false,
        "packable" => false,
        "default"  => \SolasMatch\Common\Protobufs\Emails\EmailMessage\Type::OrgMembershipAccepted,
      )));
      $desc->addField(2, new \ProtocolBuffers\FieldDescriptor(array(
        "type"     => \ProtocolBuffers::TYPE_INT32,
        "name"     => "user_id",
        "required" => true,
        "optional" => false,
        "repeated" => false,
        "packable" => false,
        "default"  => null,
      )));
      $desc->addField(3, new \ProtocolBuffers\FieldDescriptor(array(
        "type"     => \ProtocolBuffers::TYPE_INT32,
        "name"     => "org_id",
        "required" => true,
        "optional" => false,
        "repeated" => false,
        "packable" => false,
        "default"  => null,
      )));
      // @@protoc_insertion_point(builder_scope:.SolasMatch.Common.Protobufs.Emails.OrgMembershipAccepted)

      $descriptor = $desc->build();
    }
    return $descriptor;
  }

}
