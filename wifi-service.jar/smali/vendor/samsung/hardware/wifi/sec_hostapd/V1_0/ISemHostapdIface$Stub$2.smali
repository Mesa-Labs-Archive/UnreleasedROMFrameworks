.class Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$Stub$2;
.super Ljava/lang/Object;
.source "ISemHostapdIface.java"

# interfaces
.implements Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$getTypeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$Stub;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$Stub$2;->this$1:Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$Stub;

    iput-object p2, p0, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;I)V
    .locals 2

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    iget-object v0, p0, Lvendor/samsung/hardware/wifi/sec_hostapd/V1_0/ISemHostapdIface$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
