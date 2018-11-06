.class public Lcom/android/server/wifi/StateMachineDeathRecipient;
.super Ljava/lang/Object;
.source "StateMachineDeathRecipient.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final mDeathCommand:I

.field private mLinkedBinder:Landroid/os/IBinder;

.field private final mStateMachine:Lcom/android/internal/util/StateMachine;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/StateMachine;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/StateMachineDeathRecipient;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iput p2, p0, Lcom/android/server/wifi/StateMachineDeathRecipient;->mDeathCommand:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/StateMachineDeathRecipient;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget v1, p0, Lcom/android/server/wifi/StateMachineDeathRecipient;->mDeathCommand:I

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public linkToDeath(Landroid/os/IBinder;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/wifi/StateMachineDeathRecipient;->unlinkToDeath()V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/android/server/wifi/StateMachineDeathRecipient;->mLinkedBinder:Landroid/os/IBinder;

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    return v2
.end method

.method public unlinkToDeath()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/StateMachineDeathRecipient;->mLinkedBinder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/StateMachineDeathRecipient;->mLinkedBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v2, p0, Lcom/android/server/wifi/StateMachineDeathRecipient;->mLinkedBinder:Landroid/os/IBinder;

    return-void
.end method
