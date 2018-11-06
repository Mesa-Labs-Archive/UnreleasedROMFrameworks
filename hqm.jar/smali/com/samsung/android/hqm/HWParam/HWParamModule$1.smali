.class Lcom/samsung/android/hqm/HWParam/HWParamModule$1;
.super Landroid/os/UEventObserver;
.source "HWParamModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/HWParam/HWParamModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/HWParam/HWParamModule;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$1;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/HWParamModule$1;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {v2}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-get0(Lcom/samsung/android/hqm/HWParam/HWParamModule;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "FEATURE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-get1()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->-get1()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->sendBigData()Z

    :cond_0
    return-void
.end method
