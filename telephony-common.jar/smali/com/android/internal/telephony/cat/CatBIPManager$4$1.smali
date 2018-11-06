.class Lcom/android/internal/telephony/cat/CatBIPManager$4$1;
.super Ljava/lang/Object;
.source "CatBIPManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/CatBIPManager$4;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/cat/CatBIPManager$4;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatBIPManager$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4$1;->this$1:Lcom/android/internal/telephony/cat/CatBIPManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4$1;->this$1:Lcom/android/internal/telephony/cat/CatBIPManager$4;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->-wrap1(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    return-void
.end method
