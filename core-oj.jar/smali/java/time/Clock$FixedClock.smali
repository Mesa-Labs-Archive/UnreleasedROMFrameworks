.class final Ljava/time/Clock$FixedClock;
.super Ljava/time/Clock;
.source "Clock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FixedClock"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x671e0bb19c27c88eL


# instance fields
.field private final instant:Ljava/time/Instant;

.field private final zone:Ljava/time/ZoneId;


# direct methods
.method constructor <init>(Ljava/time/Instant;Ljava/time/ZoneId;)V
    .locals 0

    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    iput-object p1, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    iput-object p2, p0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/time/Clock$FixedClock;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/time/Clock$FixedClock;

    iget-object v2, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    iget-object v3, v0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-virtual {v2, v3}, Ljava/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    iget-object v2, v0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getZone()Ljava/time/ZoneId;
    .locals 1

    iget-object v0, p0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1}, Ljava/time/ZoneId;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public instant()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    return-object v0
.end method

.method public millis()J
    .locals 2

    iget-object v0, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FixedClock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 2

    iget-object v0, p0, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {p1, v0}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/time/Clock$FixedClock;

    iget-object v1, p0, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-direct {v0, v1, p1}, Ljava/time/Clock$FixedClock;-><init>(Ljava/time/Instant;Ljava/time/ZoneId;)V

    return-object v0
.end method
