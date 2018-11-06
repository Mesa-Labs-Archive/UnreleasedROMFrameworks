.class Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;
.super Ljava/lang/Object;
.source "WifiVendorHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiVendorHal;->getApfCapabilities()Landroid/net/apf/ApfCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnswerBox"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiVendorHal;

.field public value:Landroid/net/apf/ApfCapabilities;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiVendorHal;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;->this$0:Lcom/android/server/wifi/WifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/wifi/WifiVendorHal;->-get6()Landroid/net/apf/ApfCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiVendorHal$5AnswerBox;->value:Landroid/net/apf/ApfCapabilities;

    return-void
.end method
