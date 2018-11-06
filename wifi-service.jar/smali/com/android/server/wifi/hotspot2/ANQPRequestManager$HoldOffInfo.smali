.class Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;
.super Ljava/lang/Object;
.source "ANQPRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/ANQPRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoldOffInfo"
.end annotation


# instance fields
.field public holdOffCount:I

.field public holdOffExpirationTime:J

.field final synthetic this$0:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/hotspot2/ANQPRequestManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->this$0:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/hotspot2/ANQPRequestManager;Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;-><init>(Lcom/android/server/wifi/hotspot2/ANQPRequestManager;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->this$0:Lcom/android/server/wifi/hotspot2/ANQPRequestManager;

    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/ANQPRequestManager;->-get0(Lcom/android/server/wifi/hotspot2/ANQPRequestManager;)Lcom/android/server/wifi/Clock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    const-string/jumbo v3, " holdOffCount, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " Not allowed to send ANQP request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/ANQPRequestManager$HoldOffInfo;->holdOffExpirationTime:J

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
