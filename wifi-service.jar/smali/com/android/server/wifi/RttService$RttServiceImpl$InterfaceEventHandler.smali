.class Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;
.super Landroid/net/wifi/IInterfaceEventCallback$Stub;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterfaceEventHandler"
.end annotation


# instance fields
.field private mRttStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/IInterfaceEventCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;->mRttStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    return-void
.end method


# virtual methods
.method public OnApInterfaceReady(Landroid/net/wifi/IApInterface;)V
    .locals 0

    return-void
.end method

.method public OnApTorndownEvent(Landroid/net/wifi/IApInterface;)V
    .locals 0

    return-void
.end method

.method public OnClientInterfaceReady(Landroid/net/wifi/IClientInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;->mRttStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    const v1, 0x27304

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public OnClientTorndownEvent(Landroid/net/wifi/IClientInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$InterfaceEventHandler;->mRttStateMachine:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    const v1, 0x27305

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
