.class Lcom/android/server/wifi/WifiCertManager$1;
.super Ljava/lang/Object;
.source "WifiCertManager.java"

# interfaces
.implements Lcom/android/server/net/DelayedDiskWrite$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiCertManager;->writeConfigFile([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiCertManager;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiCertManager;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiCertManager$1;->this$0:Lcom/android/server/wifi/WifiCertManager;

    iput-object p2, p0, Lcom/android/server/wifi/WifiCertManager$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCalled(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/WifiCertManager$1;->val$data:[B

    iget-object v1, p0, Lcom/android/server/wifi/WifiCertManager$1;->val$data:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method
