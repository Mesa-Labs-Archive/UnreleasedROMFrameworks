.class final Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;
.super Ljava/util/HashMap;
.source "PDPContextStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PDPContextStateBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    const/16 v3, 0x12d

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "radioTurnedOff"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "unknownPdpDisconnect"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "unknown data error"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x130

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "roamingOn"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x131

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "roamingOff"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x132

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "dataDisabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x133

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "dataEnabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x134

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "dataAttached"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x135

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "dataDetached"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x136

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "cdmaDataAttached"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x137

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "cdmaDataDetached"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x138

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "apnChanged"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x139

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "apnSwitched"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "apnFailed"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "restoreDefaultApn"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13c

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "pdpReset"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "2GVoiceCallEnded"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "2GVoiceCallStarted"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "psRestrictEnabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x140

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "psRestrictDisabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x141

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "simLoaded"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x142

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "apnTypeDisabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x143

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "apnTypeEnabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x144

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "masterDataDisabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x145

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "masterDataEnabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x146

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "iccRecordsLoaded"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x147

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "cdmaOtaProvisioning"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x148

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "defaultDataDisabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x149

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "defaultDataEnabled"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "radioOn"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "radioOff"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14c

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "radioTechnologyChanged"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "networkOrModemDisconnect"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "dataNetworkAttached"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "dataNetworkDetached"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x150

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "dataProfileDbChanged"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x151

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "cdmaSubscriptionSourceChanged"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x152

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "tetheredModeChanged"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x153

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "dataConnectionPropertyChanged"

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x154

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "nwTypeChanged"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "dependencyMet"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "dependencyUnmet"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "linkPropertiesChanged"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
