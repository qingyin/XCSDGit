// Code generated by Wire protocol buffer compiler, do not edit.
// Source file: src/main/resources/proto/Homework.proto
package com.xcsd.rpc.proto;

import com.squareup.wire.Message;

public final class ReadHomeworkNoticeResponse extends Message {
  private static final long serialVersionUID = 0L;

  public ReadHomeworkNoticeResponse() {
  }

  private ReadHomeworkNoticeResponse(Builder builder) {
    setBuilder(builder);
  }

  @Override
  public boolean equals(Object other) {
    return other instanceof ReadHomeworkNoticeResponse;
  }

  @Override
  public int hashCode() {
    return 0;
  }

  public static final class Builder extends Message.Builder<ReadHomeworkNoticeResponse> {

    public Builder() {
    }

    public Builder(ReadHomeworkNoticeResponse message) {
      super(message);
    }

    @Override
    public ReadHomeworkNoticeResponse build() {
      return new ReadHomeworkNoticeResponse(this);
    }
  }
}
