// Code generated by Wire protocol buffer compiler, do not edit.
// Source file: src/main/resources/proto/Homework.proto
package com.xcsd.rpc.proto;

import com.squareup.wire.Message;
import com.squareup.wire.ProtoField;
import java.util.Collections;
import java.util.List;

import static com.squareup.wire.Message.Label.REPEATED;

public final class HomeworkGenerateDetailResponse extends Message {
  private static final long serialVersionUID = 0L;

  public static final List<GameLevel> DEFAULT_GAMELEVELS = Collections.emptyList();

  @ProtoField(tag = 1, label = REPEATED, messageType = GameLevel.class)
  public final List<GameLevel> gameLevels;

  public HomeworkGenerateDetailResponse(List<GameLevel> gameLevels) {
    this.gameLevels = immutableCopyOf(gameLevels);
  }

  private HomeworkGenerateDetailResponse(Builder builder) {
    this(builder.gameLevels);
    setBuilder(builder);
  }

  @Override
  public boolean equals(Object other) {
    if (other == this) return true;
    if (!(other instanceof HomeworkGenerateDetailResponse)) return false;
    return equals(gameLevels, ((HomeworkGenerateDetailResponse) other).gameLevels);
  }

  @Override
  public int hashCode() {
    int result = hashCode;
    return result != 0 ? result : (hashCode = gameLevels != null ? gameLevels.hashCode() : 1);
  }

  public static final class Builder extends Message.Builder<HomeworkGenerateDetailResponse> {

    public List<GameLevel> gameLevels;

    public Builder() {
    }

    public Builder(HomeworkGenerateDetailResponse message) {
      super(message);
      if (message == null) return;
      this.gameLevels = copyOf(message.gameLevels);
    }

    public Builder gameLevels(List<GameLevel> gameLevels) {
      this.gameLevels = checkForNulls(gameLevels);
      return this;
    }

    @Override
    public HomeworkGenerateDetailResponse build() {
      return new HomeworkGenerateDetailResponse(this);
    }
  }
}
