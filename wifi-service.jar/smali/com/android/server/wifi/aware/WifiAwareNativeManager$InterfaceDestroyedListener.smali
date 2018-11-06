.class Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;
.super Ljava/lang/Object;
.source "WifiAwareNativeManager.java"

# interfaces
.implements Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareNativeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceDestroyedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;-><init>(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V

    return-void
.end method


# virtual methods
.method public onDestroyed()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareNativeManager$InterfaceDestroyedListener;->this$0:Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    invoke-static {v0}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->-wrap0(Lcom/android/server/wifi/aware/WifiAwareNativeManager;)V

    return-void
.end method
