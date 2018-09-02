// Code generated by Wire protocol buffer compiler, do not edit.
// Source file: src/main/resources/proto/Homework.proto
package com.xcsd.rpc.proto;

import com.squareup.wire.Message;
import com.squareup.wire.ProtoField;

import static com.squareup.wire.Message.Datatype.INT64;

/**
 * 获取作业排名
 * URL:/homework/ranking
 */
public final class HomeworkRankingRequest extends Message {
  private static final long serialVersionUID = 0L;

  public static final Long DEFAULT_CHILDUSERID = 0L;
  public static final Long DEFAULT_CLASSID = 0L;

  @ProtoField(tag = 1, type = INT64)
  public final Long childUserId;

  @ProtoField(tag = 2, type = INT64)
  public final Long classId;

  public HomeworkRankingRequest(Long childUserId, Long classId) {
    this.childUserId = childUserId;
    this.classId = classId;
  }

  private HomeworkRankingRequest(Builder builder) {
    this(builder.childUserId, builder.classId);
    setBuilder(builder);
  }

  @Override
  public boolean equals(Object other) {
    if (other == this) return true;
    if (!(other instanceof HomeworkRankingRequest)) return false;
    HomeworkRankingRequest o = (HomeworkRankingRequest) other;
    return equals(childUserId, o.childUserId)
        && equals(classId, o.classId);
  }

  @Override
  public int hashCode() {
    int result = hashCode;
    if (result == 0) {
      result = childUserId != null ? childUserId.hashCode() : 0;
      result = result * 37 + (classId != null ? classId.hashCode() : 0);
      hashCode = result;
    }
    return result;
  }

  public static final class Builder extends Message.Builder<HomeworkRankingRequest> {

    public Long childUserId;
    public Long classId;

    public Builder() {
    }

    public Builder(HomeworkRankingRequest message) {
      super(message);
      if (message == null) return;
      this.childUserId = message.childUserId;
      this.classId = message.classId;
    }

    public Builder childUserId(Long childUserId) {
      this.childUserId = childUserId;
      return this;
    }

    public Builder classId(Long classId) {
      this.classId = classId;
      return this;
    }

    @Override
    public HomeworkRankingRequest build() {
      return new HomeworkRankingRequest(this);
    }
  }
}