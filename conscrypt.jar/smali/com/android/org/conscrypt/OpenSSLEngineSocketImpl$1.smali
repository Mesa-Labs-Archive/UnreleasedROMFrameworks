.class Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$1;
.super Ljava/lang/Object;
.source "OpenSSLEngineSocketImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/HandshakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$1;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandshakeFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$1;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-get1(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$1;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->-set0(Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;Z)Z

    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl$1;->this$0:Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLEngineSocketImpl;->notifyHandshakeCompletedListeners()V

    :cond_0
    return-void
.end method
