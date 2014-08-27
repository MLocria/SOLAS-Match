<?php
namespace SolasMatch\Common\Protobufs\Models;

// @@protoc_insertion_point(namespace:.SolasMatch.Common.Protobufs.Models.WorkflowNode)

/**
 * Generated by the protocol buffer compiler.  DO NOT EDIT!
 * source: WorkflowNode.proto
 *
 * -*- magic methods -*-
 *
 * @method string getTaskId()
 * @method void setTaskId(\string $value)
 * @method \SolasMatch\Common\Protobufs\Models\Task getTask()
 * @method void setTask(\SolasMatch\Common\Protobufs\Models\Task $value)
 * @method array getNext()
 * @method void appendNext(\string $value)
 * @method array getPrevious()
 * @method void appendPrevious(\string $value)
 */
class WorkflowNode extends \ProtocolBuffers\Message
{
  // @@protoc_insertion_point(traits:.SolasMatch.Common.Protobufs.Models.WorkflowNode)
  
  /**
   * @var string $taskId
   * @tag 1
   * @label required
   * @type \ProtocolBuffers::TYPE_INT32
   **/
  protected $taskId;
  
  /**
   * @var \SolasMatch\Common\Protobufs\Models\Task $task
   * @tag 2
   * @label optional
   * @type \ProtocolBuffers::TYPE_MESSAGE
   **/
  protected $task;
  
  /**
   * @var array $next
   * @tag 3
   * @label optional
   * @type \ProtocolBuffers::TYPE_INT32
   **/
  protected $next;
  
  /**
   * @var array $previous
   * @tag 4
   * @label optional
   * @type \ProtocolBuffers::TYPE_INT32
   **/
  protected $previous;
  
  
  // @@protoc_insertion_point(properties_scope:.SolasMatch.Common.Protobufs.Models.WorkflowNode)

  // @@protoc_insertion_point(class_scope:.SolasMatch.Common.Protobufs.Models.WorkflowNode)

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
        "name"     => "taskId",
        "required" => true,
        "optional" => false,
        "repeated" => false,
        "packable" => false,
        "default"  => null,
      )));
      $desc->addField(2, new \ProtocolBuffers\FieldDescriptor(array(
        "type"     => \ProtocolBuffers::TYPE_MESSAGE,
        "name"     => "task",
        "required" => false,
        "optional" => true,
        "repeated" => false,
        "packable" => false,
        "default"  => null,
        "message" => '\SolasMatch\Common\Protobufs\Models\Task',
      )));
      $desc->addField(3, new \ProtocolBuffers\FieldDescriptor(array(
        "type"     => \ProtocolBuffers::TYPE_INT32,
        "name"     => "next",
        "required" => false,
        "optional" => false,
        "repeated" => true,
        "packable" => false,
        "default"  => null,
      )));
      $desc->addField(4, new \ProtocolBuffers\FieldDescriptor(array(
        "type"     => \ProtocolBuffers::TYPE_INT32,
        "name"     => "previous",
        "required" => false,
        "optional" => false,
        "repeated" => true,
        "packable" => false,
        "default"  => null,
      )));
      // @@protoc_insertion_point(builder_scope:.SolasMatch.Common.Protobufs.Models.WorkflowNode)

      $descriptor = $desc->build();
    }
    return $descriptor;
  }
  
  public function hasTask()
  {
      return $this->task != null;
  }

}
