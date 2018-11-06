.class Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$1;
.super Ljava/lang/Object;
.source "ISupplicant.java"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$getInterfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$Stub;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$1;->this$1:Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$Stub;

    iput-object p2, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v1}, Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    iget-object v1, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    iget-object v0, p0, Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    return-void

    :cond_0
    invoke-interface {p2}, Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    goto :goto_0
.end method
