.class public Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
.super Ljava/lang/Object;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;,
        Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "NetworkConnectivityListener"


# instance fields
.field private mHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListening:Z

.field private mState:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

.field private mType:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    sget-object v0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;->UNKNOWN:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mState:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    sget-object v0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;->UNKNOWN:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mType:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    return-void
.end method


# virtual methods
.method public getState()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mState:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    return-object v0
.end method

.method public getType()Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mType:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    return-object v0
.end method

.method public isListening()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mListening:Z

    return v0
.end method

.method public notifyHandler()V
    .locals 4

    iget-object v3, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerHandler(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setState(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mState:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$State;

    return-void
.end method

.method public setType(Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mType:Lcom/android/internal/telephony/cat/NetworkConnectivityListener$Type;

    return-void
.end method

.method public declared-synchronized startListening()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mListening:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopListening()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterHandler(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
