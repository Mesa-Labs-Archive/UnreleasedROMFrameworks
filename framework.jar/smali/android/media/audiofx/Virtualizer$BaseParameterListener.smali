.class Landroid/media/audiofx/Virtualizer$BaseParameterListener;
.super Ljava/lang/Object;
.source "Virtualizer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Virtualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/Virtualizer;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/Virtualizer;)V
    .locals 0

    iput-object p1, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/Virtualizer;Landroid/media/audiofx/Virtualizer$BaseParameterListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audiofx/Virtualizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Virtualizer;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-static {v3}, Landroid/media/audiofx/Virtualizer;->-get1(Landroid/media/audiofx/Virtualizer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-static {v3}, Landroid/media/audiofx/Virtualizer;->-get0(Landroid/media/audiofx/Virtualizer;)Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-static {v3}, Landroid/media/audiofx/Virtualizer;->-get0(Landroid/media/audiofx/Virtualizer;)Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit v4

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    const/4 v2, -0x1

    array-length v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-static {p3, v6}, Landroid/media/audiofx/Virtualizer;->byteArrayToInt([BI)I

    move-result v1

    :cond_1
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-static {p4, v6}, Landroid/media/audiofx/Virtualizer;->byteArrayToShort([BI)S

    move-result v2

    :cond_2
    if-eq v1, v5, :cond_3

    if-eq v2, v5, :cond_3

    iget-object v3, p0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Virtualizer;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Virtualizer;IIS)V

    :cond_3
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
