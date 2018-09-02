// Code generated by Wire protocol buffer compiler, do not edit.
// Source file: src/main/resources/proto/Homework.proto
package com.xcsd.rpc.proto;

import com.squareup.wire.Message;
import com.squareup.wire.ProtoField;

import static com.squareup.wire.Message.Datatype.INT64;

/**
 * 获取发送的作业列表
 * URL:/homework/sent_list
 */
public final class HomeworkSentListRequest extends Message {
  private static final long serialVersionUID = 0L;

  public static final Long DEFAULT_MAXID = 0L;
  public static final Long DEFAULT_SINCEID = 0L;

  @ProtoField(tag = 1, type = INT64)
  public final Long maxId;

  @ProtoField(tag = 2, type = INT64)
  public final Long sinceId;

  public HomeworkSentListRequest(Long maxId, Long sinceId) {
    this.maxId = maxId;
    this.sinceId = sinceId;
  }

  private HomeworkSentListRequest(Builder builder) {
    this(builder.maxId, builder.sinceId);
    setBuilder(builder);
  }

  @Override
  public boolean equals(Object other) {
    if (other == this) return true;
    if (!(other instanceof HomeworkSentListRequest)) return false;
    HomeworkSentListRequest o = (HomeworkSentListRequest) other;
    return equals(maxId, o.maxId)
        && equals(sinceId, o.sinceId);
  }

  @Override
  public int hashCode() {
    int result = hashCode;
    if (result == 0) {
      result = maxId != null ? maxId.hashCode() : 0;
      result = result * 37 + (sinceId != null ? sinceId.hashCode() : 0);
      hashCode = result;
    }
    return result;
  }

  public static final class Builder extends Message.Builder<HomeworkSentListRequest> {

    public Long maxId;
    public Long sinceId;

    public Builder() {
    }

    public Builder(HomeworkSentListRequest message) {
      super(message);
      if (message == null) return;
      this.maxId = message.maxId;
      this.sinceId = message.sinceId;
    }

    public Builder maxId(Long maxId) {
      this.maxId = maxId;
      return this;
    }

    public Builder sinceId(Long sinceId) {
      this.sinceId = sinceId;
      return this;
    }

    @Override
    public HomeworkSentListRequest build() {
      return new HomeworkSentListRequest(this);
    }
  }
}