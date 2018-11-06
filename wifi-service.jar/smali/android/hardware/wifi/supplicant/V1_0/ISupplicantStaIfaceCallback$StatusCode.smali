.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$StatusCode;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusCode"
.end annotation


# static fields
.field public static final ADV_SRV_UNREACHABLE:I = 0x41

.field public static final AKMP_NOT_VALID:I = 0x2b

.field public static final ANTI_CLOGGING_TOKEN_REQ:I = 0x4c

.field public static final AP_UNABLE_TO_HANDLE_NEW_STA:I = 0x11

.field public static final ASSOC_DENIED_LISTEN_INT_TOO_LARGE:I = 0x33

.field public static final ASSOC_DENIED_NOSHORT:I = 0x13

.field public static final ASSOC_DENIED_NO_HT:I = 0x1b

.field public static final ASSOC_DENIED_NO_PCO:I = 0x1d

.field public static final ASSOC_DENIED_NO_SHORT_SLOT_TIME:I = 0x19

.field public static final ASSOC_DENIED_NO_VHT:I = 0x68

.field public static final ASSOC_DENIED_RATES:I = 0x12

.field public static final ASSOC_DENIED_UNSPEC:I = 0xc

.field public static final ASSOC_REJECTED_TEMPORARILY:I = 0x1e

.field public static final AUTHORIZATION_DEENABLED:I = 0x6b

.field public static final AUTH_TIMEOUT:I = 0x10

.field public static final BAD_INTERVAL_WITH_U_APSD_COEX:I = 0x4b

.field public static final CANNOT_FIND_ALT_TBTT:I = 0x4e

.field public static final CAPS_UNSUPPORTED:I = 0xa

.field public static final CHALLENGE_FAIL:I = 0xf

.field public static final CIPHER_REJECTED_PER_POLICY:I = 0x2e

.field public static final DENIED_DUE_TO_SPECTRUM_MANAGEMENT:I = 0x67

.field public static final DENIED_INSUFFICIENT_BANDWIDTH:I = 0x21

.field public static final DENIED_POOR_CHANNEL_CONDITIONS:I = 0x22

.field public static final DENIED_QOS_NOT_SUPPORTED:I = 0x23

.field public static final DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL:I = 0x63

.field public static final DEST_STA_NOT_PRESENT:I = 0x31

.field public static final DEST_STA_NOT_QOS_STA:I = 0x32

.field public static final DIRECT_LINK_NOT_ALLOWED:I = 0x30

.field public static final ENABLEMENT_DENIED:I = 0x69

.field public static final FILS_AUTHENTICATION_FAILURE:I = 0x70

.field public static final FINITE_CYCLIC_GROUP_NOT_SUPPORTED:I = 0x4d

.field public static final GAS_ADV_PROTO_NOT_SUPPORTED:I = 0x3b

.field public static final GAS_RESP_LARGER_THAN_LIMIT:I = 0x3f

.field public static final GAS_RESP_NOT_RECEIVED:I = 0x3d

.field public static final GROUP_CIPHER_NOT_VALID:I = 0x29

.field public static final INSUFFICIENT_TCLAS_PROCESSING_RESOURCES:I = 0x39

.field public static final INVALID_FTIE:I = 0x37

.field public static final INVALID_FT_ACTION_FRAME_COUNT:I = 0x34

.field public static final INVALID_IE:I = 0x28

.field public static final INVALID_MDIE:I = 0x36

.field public static final INVALID_PARAMETERS:I = 0x26

.field public static final INVALID_PMKID:I = 0x35

.field public static final INVALID_RSNIE:I = 0x48

.field public static final INVALID_RSN_IE_CAPAB:I = 0x2d

.field public static final MAF_LIMIT_EXCEEDED:I = 0x65

.field public static final MCCAOP_RESERVATION_CONFLICT:I = 0x64

.field public static final MCCA_TRACK_LIMIT_EXCEEDED:I = 0x66

.field public static final NOT_IN_SAME_BSS:I = 0x7

.field public static final NOT_SUPPORTED_AUTH_ALG:I = 0xd

.field public static final NO_OUTSTANDING_GAS_REQ:I = 0x3c

.field public static final PAIRWISE_CIPHER_NOT_VALID:I = 0x2a

.field public static final PENDING_ADMITTING_FST_SESSION:I = 0x56

.field public static final PENDING_GAP_IN_BA_WINDOW:I = 0x58

.field public static final PERFORMING_FST_NOW:I = 0x57

.field public static final PWR_CAPABILITY_NOT_VALID:I = 0x17

.field public static final QUERY_RESP_OUTSTANDING:I = 0x5f

.field public static final R0KH_UNREACHABLE:I = 0x1c

.field public static final REASSOC_NO_ASSOC:I = 0xb

.field public static final REFUSED_AP_OUT_OF_MEMORY:I = 0x5d

.field public static final REFUSED_EXTERNAL_REASON:I = 0x5c

.field public static final REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED:I = 0x5e

.field public static final REJECTED_WITH_SUGGESTED_BSS_TRANSITION:I = 0x52

.field public static final REJECTED_WITH_SUGGESTED_CHANGES:I = 0x27

.field public static final REJECT_DSE_BAND:I = 0x60

.field public static final REJECT_NO_WAKEUP_SPECIFIED:I = 0x54

.field public static final REJECT_U_PID_SETTING:I = 0x59

.field public static final REJECT_WITH_SCHEDULE:I = 0x53

.field public static final REQUESTED_TCLAS_NOT_SUPPORTED:I = 0x38

.field public static final REQUEST_DECLINED:I = 0x25

.field public static final REQ_REFUSED_HOME:I = 0x40

.field public static final REQ_REFUSED_SSPN:I = 0x43

.field public static final REQ_REFUSED_UNAUTH_ACCESS:I = 0x44

.field public static final REQ_TCLAS_NOT_SUPPORTED:I = 0x50

.field public static final RESTRICTION_FROM_AUTHORIZED_GDB:I = 0x6a

.field public static final ROBUST_MGMT_FRAME_POLICY_VIOLATION:I = 0x1f

.field public static final SECURITY_DISABLED:I = 0x5

.field public static final SPEC_MGMT_REQUIRED:I = 0x16

.field public static final STA_TIMED_OUT_WAITING_FOR_GAS_RESP:I = 0x3e

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_POWER_SAVE_MODE:I = 0x55

.field public static final SUPPORTED_CHANNEL_NOT_VALID:I = 0x18

.field public static final TCLAS_PROCESSING_TERMINATED:I = 0x61

.field public static final TCLAS_RESOURCES_EXCHAUSTED:I = 0x51

.field public static final TDLS_WAKEUP_ALTERNATE:I = 0x2

.field public static final TDLS_WAKEUP_REJECT:I = 0x3

.field public static final TRANSMISSION_FAILURE:I = 0x4f

.field public static final TRY_ANOTHER_BSS:I = 0x3a

.field public static final TS_NOT_CREATED:I = 0x2f

.field public static final TS_SCHEDULE_CONFLICT:I = 0x62

.field public static final UNACCEPTABLE_LIFETIME:I = 0x6

.field public static final UNKNOWN_AUTHENTICATION_SERVER:I = 0x71

.field public static final UNKNOWN_AUTH_TRANSACTION:I = 0xe

.field public static final UNSPECIFIED_FAILURE:I = 0x1

.field public static final UNSPECIFIED_QOS_FAILURE:I = 0x20

.field public static final UNSUPPORTED_RSN_IE_VERSION:I = 0x2c

.field public static final U_APSD_COEX_MODE_NOT_SUPPORTED:I = 0x4a

.field public static final U_APSD_COEX_NOT_SUPPORTED:I = 0x49


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_0

    const-string/jumbo v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "UNSPECIFIED_FAILURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1

    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "TDLS_WAKEUP_ALTERNATE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2

    :cond_2
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "TDLS_WAKEUP_REJECT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3

    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "SECURITY_DISABLED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x5

    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    const-string/jumbo v2, "UNACCEPTABLE_LIFETIME"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x6

    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "NOT_IN_SAME_BSS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x7

    :cond_6
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7

    const-string/jumbo v2, "CAPS_UNSUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xa

    :cond_7
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_8

    const-string/jumbo v2, "REASSOC_NO_ASSOC"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xb

    :cond_8
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9

    const-string/jumbo v2, "ASSOC_DENIED_UNSPEC"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xc

    :cond_9
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_a

    const-string/jumbo v2, "NOT_SUPPORTED_AUTH_ALG"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xd

    :cond_a
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_b

    const-string/jumbo v2, "UNKNOWN_AUTH_TRANSACTION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xe

    :cond_b
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c

    const-string/jumbo v2, "CHALLENGE_FAIL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xf

    :cond_c
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_d

    const-string/jumbo v2, "AUTH_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x10

    :cond_d
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_e

    const-string/jumbo v2, "AP_UNABLE_TO_HANDLE_NEW_STA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x11

    :cond_e
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_f

    const-string/jumbo v2, "ASSOC_DENIED_RATES"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x12

    :cond_f
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_10

    const-string/jumbo v2, "ASSOC_DENIED_NOSHORT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x13

    :cond_10
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_11

    const-string/jumbo v2, "SPEC_MGMT_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x16

    :cond_11
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_12

    const-string/jumbo v2, "PWR_CAPABILITY_NOT_VALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x17

    :cond_12
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_13

    const-string/jumbo v2, "SUPPORTED_CHANNEL_NOT_VALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x18

    :cond_13
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_14

    const-string/jumbo v2, "ASSOC_DENIED_NO_SHORT_SLOT_TIME"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x19

    :cond_14
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_15

    const-string/jumbo v2, "ASSOC_DENIED_NO_HT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1b

    :cond_15
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_16

    const-string/jumbo v2, "R0KH_UNREACHABLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1c

    :cond_16
    and-int/lit8 v2, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_17

    const-string/jumbo v2, "ASSOC_DENIED_NO_PCO"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1d

    :cond_17
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_18

    const-string/jumbo v2, "ASSOC_REJECTED_TEMPORARILY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1e

    :cond_18
    and-int/lit8 v2, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_19

    const-string/jumbo v2, "ROBUST_MGMT_FRAME_POLICY_VIOLATION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1f

    :cond_19
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1a

    const-string/jumbo v2, "UNSPECIFIED_QOS_FAILURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x20

    :cond_1a
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_1b

    const-string/jumbo v2, "DENIED_INSUFFICIENT_BANDWIDTH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x21

    :cond_1b
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1c

    const-string/jumbo v2, "DENIED_POOR_CHANNEL_CONDITIONS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x22

    :cond_1c
    and-int/lit8 v2, p0, 0x23

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1d

    const-string/jumbo v2, "DENIED_QOS_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x23

    :cond_1d
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_1e

    const-string/jumbo v2, "REQUEST_DECLINED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x25

    :cond_1e
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1f

    const-string/jumbo v2, "INVALID_PARAMETERS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x26

    :cond_1f
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_20

    const-string/jumbo v2, "REJECTED_WITH_SUGGESTED_CHANGES"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x27

    :cond_20
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_21

    const-string/jumbo v2, "INVALID_IE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x28

    :cond_21
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_22

    const-string/jumbo v2, "GROUP_CIPHER_NOT_VALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x29

    :cond_22
    and-int/lit8 v2, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_23

    const-string/jumbo v2, "PAIRWISE_CIPHER_NOT_VALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2a

    :cond_23
    and-int/lit8 v2, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_24

    const-string/jumbo v2, "AKMP_NOT_VALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2b

    :cond_24
    and-int/lit8 v2, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_25

    const-string/jumbo v2, "UNSUPPORTED_RSN_IE_VERSION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2c

    :cond_25
    and-int/lit8 v2, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_26

    const-string/jumbo v2, "INVALID_RSN_IE_CAPAB"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2d

    :cond_26
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_27

    const-string/jumbo v2, "CIPHER_REJECTED_PER_POLICY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2e

    :cond_27
    and-int/lit8 v2, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_28

    const-string/jumbo v2, "TS_NOT_CREATED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2f

    :cond_28
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_29

    const-string/jumbo v2, "DIRECT_LINK_NOT_ALLOWED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x30

    :cond_29
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2a

    const-string/jumbo v2, "DEST_STA_NOT_PRESENT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x31

    :cond_2a
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_2b

    const-string/jumbo v2, "DEST_STA_NOT_QOS_STA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x32

    :cond_2b
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_2c

    const-string/jumbo v2, "ASSOC_DENIED_LISTEN_INT_TOO_LARGE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x33

    :cond_2c
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_2d

    const-string/jumbo v2, "INVALID_FT_ACTION_FRAME_COUNT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x34

    :cond_2d
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_2e

    const-string/jumbo v2, "INVALID_PMKID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x35

    :cond_2e
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_2f

    const-string/jumbo v2, "INVALID_MDIE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x36

    :cond_2f
    and-int/lit8 v2, p0, 0x37

    const/16 v3, 0x37

    if-ne v2, v3, :cond_30

    const-string/jumbo v2, "INVALID_FTIE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x37

    :cond_30
    and-int/lit8 v2, p0, 0x38

    const/16 v3, 0x38

    if-ne v2, v3, :cond_31

    const-string/jumbo v2, "REQUESTED_TCLAS_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x38

    :cond_31
    and-int/lit8 v2, p0, 0x39

    const/16 v3, 0x39

    if-ne v2, v3, :cond_32

    const-string/jumbo v2, "INSUFFICIENT_TCLAS_PROCESSING_RESOURCES"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x39

    :cond_32
    and-int/lit8 v2, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_33

    const-string/jumbo v2, "TRY_ANOTHER_BSS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3a

    :cond_33
    and-int/lit8 v2, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_34

    const-string/jumbo v2, "GAS_ADV_PROTO_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3b

    :cond_34
    and-int/lit8 v2, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_35

    const-string/jumbo v2, "NO_OUTSTANDING_GAS_REQ"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3c

    :cond_35
    and-int/lit8 v2, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_36

    const-string/jumbo v2, "GAS_RESP_NOT_RECEIVED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3d

    :cond_36
    and-int/lit8 v2, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_37

    const-string/jumbo v2, "STA_TIMED_OUT_WAITING_FOR_GAS_RESP"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3e

    :cond_37
    and-int/lit8 v2, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_38

    const-string/jumbo v2, "GAS_RESP_LARGER_THAN_LIMIT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3f

    :cond_38
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_39

    const-string/jumbo v2, "REQ_REFUSED_HOME"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x40

    :cond_39
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_3a

    const-string/jumbo v2, "ADV_SRV_UNREACHABLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x41

    :cond_3a
    and-int/lit8 v2, p0, 0x43

    const/16 v3, 0x43

    if-ne v2, v3, :cond_3b

    const-string/jumbo v2, "REQ_REFUSED_SSPN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x43

    :cond_3b
    and-int/lit8 v2, p0, 0x44

    const/16 v3, 0x44

    if-ne v2, v3, :cond_3c

    const-string/jumbo v2, "REQ_REFUSED_UNAUTH_ACCESS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x44

    :cond_3c
    and-int/lit8 v2, p0, 0x48

    const/16 v3, 0x48

    if-ne v2, v3, :cond_3d

    const-string/jumbo v2, "INVALID_RSNIE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x48

    :cond_3d
    and-int/lit8 v2, p0, 0x49

    const/16 v3, 0x49

    if-ne v2, v3, :cond_3e

    const-string/jumbo v2, "U_APSD_COEX_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x49

    :cond_3e
    and-int/lit8 v2, p0, 0x4a

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_3f

    const-string/jumbo v2, "U_APSD_COEX_MODE_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x4a

    :cond_3f
    and-int/lit8 v2, p0, 0x4b

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_40

    const-string/jumbo v2, "BAD_INTERVAL_WITH_U_APSD_COEX"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x4b

    :cond_40
    and-int/lit8 v2, p0, 0x4c

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_41

    const-string/jumbo v2, "ANTI_CLOGGING_TOKEN_REQ"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x4c

    :cond_41
    and-int/lit8 v2, p0, 0x4d

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_42

    const-string/jumbo v2, "FINITE_CYCLIC_GROUP_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x4d

    :cond_42
    and-int/lit8 v2, p0, 0x4e

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_43

    const-string/jumbo v2, "CANNOT_FIND_ALT_TBTT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x4e

    :cond_43
    and-int/lit8 v2, p0, 0x4f

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_44

    const-string/jumbo v2, "TRANSMISSION_FAILURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x4f

    :cond_44
    and-int/lit8 v2, p0, 0x50

    const/16 v3, 0x50

    if-ne v2, v3, :cond_45

    const-string/jumbo v2, "REQ_TCLAS_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x50

    :cond_45
    and-int/lit8 v2, p0, 0x51

    const/16 v3, 0x51

    if-ne v2, v3, :cond_46

    const-string/jumbo v2, "TCLAS_RESOURCES_EXCHAUSTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x51

    :cond_46
    and-int/lit8 v2, p0, 0x52

    const/16 v3, 0x52

    if-ne v2, v3, :cond_47

    const-string/jumbo v2, "REJECTED_WITH_SUGGESTED_BSS_TRANSITION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x52

    :cond_47
    and-int/lit8 v2, p0, 0x53

    const/16 v3, 0x53

    if-ne v2, v3, :cond_48

    const-string/jumbo v2, "REJECT_WITH_SCHEDULE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x53

    :cond_48
    and-int/lit8 v2, p0, 0x54

    const/16 v3, 0x54

    if-ne v2, v3, :cond_49

    const-string/jumbo v2, "REJECT_NO_WAKEUP_SPECIFIED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x54

    :cond_49
    and-int/lit8 v2, p0, 0x55

    const/16 v3, 0x55

    if-ne v2, v3, :cond_4a

    const-string/jumbo v2, "SUCCESS_POWER_SAVE_MODE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x55

    :cond_4a
    and-int/lit8 v2, p0, 0x56

    const/16 v3, 0x56

    if-ne v2, v3, :cond_4b

    const-string/jumbo v2, "PENDING_ADMITTING_FST_SESSION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x56

    :cond_4b
    and-int/lit8 v2, p0, 0x57

    const/16 v3, 0x57

    if-ne v2, v3, :cond_4c

    const-string/jumbo v2, "PERFORMING_FST_NOW"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x57

    :cond_4c
    and-int/lit8 v2, p0, 0x58

    const/16 v3, 0x58

    if-ne v2, v3, :cond_4d

    const-string/jumbo v2, "PENDING_GAP_IN_BA_WINDOW"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x58

    :cond_4d
    and-int/lit8 v2, p0, 0x59

    const/16 v3, 0x59

    if-ne v2, v3, :cond_4e

    const-string/jumbo v2, "REJECT_U_PID_SETTING"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x59

    :cond_4e
    and-int/lit8 v2, p0, 0x5c

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4f

    const-string/jumbo v2, "REFUSED_EXTERNAL_REASON"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x5c

    :cond_4f
    and-int/lit8 v2, p0, 0x5d

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_50

    const-string/jumbo v2, "REFUSED_AP_OUT_OF_MEMORY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x5d

    :cond_50
    and-int/lit8 v2, p0, 0x5e

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_51

    const-string/jumbo v2, "REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x5e

    :cond_51
    and-int/lit8 v2, p0, 0x5f

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_52

    const-string/jumbo v2, "QUERY_RESP_OUTSTANDING"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x5f

    :cond_52
    and-int/lit8 v2, p0, 0x60

    const/16 v3, 0x60

    if-ne v2, v3, :cond_53

    const-string/jumbo v2, "REJECT_DSE_BAND"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x60

    :cond_53
    and-int/lit8 v2, p0, 0x61

    const/16 v3, 0x61

    if-ne v2, v3, :cond_54

    const-string/jumbo v2, "TCLAS_PROCESSING_TERMINATED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x61

    :cond_54
    and-int/lit8 v2, p0, 0x62

    const/16 v3, 0x62

    if-ne v2, v3, :cond_55

    const-string/jumbo v2, "TS_SCHEDULE_CONFLICT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x62

    :cond_55
    and-int/lit8 v2, p0, 0x63

    const/16 v3, 0x63

    if-ne v2, v3, :cond_56

    const-string/jumbo v2, "DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x63

    :cond_56
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_57

    const-string/jumbo v2, "MCCAOP_RESERVATION_CONFLICT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x64

    :cond_57
    and-int/lit8 v2, p0, 0x65

    const/16 v3, 0x65

    if-ne v2, v3, :cond_58

    const-string/jumbo v2, "MAF_LIMIT_EXCEEDED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x65

    :cond_58
    and-int/lit8 v2, p0, 0x66

    const/16 v3, 0x66

    if-ne v2, v3, :cond_59

    const-string/jumbo v2, "MCCA_TRACK_LIMIT_EXCEEDED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x66

    :cond_59
    and-int/lit8 v2, p0, 0x67

    const/16 v3, 0x67

    if-ne v2, v3, :cond_5a

    const-string/jumbo v2, "DENIED_DUE_TO_SPECTRUM_MANAGEMENT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x67

    :cond_5a
    and-int/lit8 v2, p0, 0x68

    const/16 v3, 0x68

    if-ne v2, v3, :cond_5b

    const-string/jumbo v2, "ASSOC_DENIED_NO_VHT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x68

    :cond_5b
    and-int/lit8 v2, p0, 0x69

    const/16 v3, 0x69

    if-ne v2, v3, :cond_5c

    const-string/jumbo v2, "ENABLEMENT_DENIED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x69

    :cond_5c
    and-int/lit8 v2, p0, 0x6a

    const/16 v3, 0x6a

    if-ne v2, v3, :cond_5d

    const-string/jumbo v2, "RESTRICTION_FROM_AUTHORIZED_GDB"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x6a

    :cond_5d
    and-int/lit8 v2, p0, 0x6b

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_5e

    const-string/jumbo v2, "AUTHORIZATION_DEENABLED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x6b

    :cond_5e
    and-int/lit8 v2, p0, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_5f

    const-string/jumbo v2, "FILS_AUTHENTICATION_FAILURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x70

    :cond_5f
    and-int/lit8 v2, p0, 0x71

    const/16 v3, 0x71

    if-ne v2, v3, :cond_60

    const-string/jumbo v2, "UNKNOWN_AUTHENTICATION_SERVER"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x71

    :cond_60
    if-eq p0, v0, :cond_61

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v0

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_61
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string/jumbo v0, "SUCCESS"

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "UNSPECIFIED_FAILURE"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "TDLS_WAKEUP_ALTERNATE"

    return-object v0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "TDLS_WAKEUP_REJECT"

    return-object v0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string/jumbo v0, "SECURITY_DISABLED"

    return-object v0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string/jumbo v0, "UNACCEPTABLE_LIFETIME"

    return-object v0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string/jumbo v0, "NOT_IN_SAME_BSS"

    return-object v0

    :cond_6
    const/16 v0, 0xa

    if-ne p0, v0, :cond_7

    const-string/jumbo v0, "CAPS_UNSUPPORTED"

    return-object v0

    :cond_7
    const/16 v0, 0xb

    if-ne p0, v0, :cond_8

    const-string/jumbo v0, "REASSOC_NO_ASSOC"

    return-object v0

    :cond_8
    const/16 v0, 0xc

    if-ne p0, v0, :cond_9

    const-string/jumbo v0, "ASSOC_DENIED_UNSPEC"

    return-object v0

    :cond_9
    const/16 v0, 0xd

    if-ne p0, v0, :cond_a

    const-string/jumbo v0, "NOT_SUPPORTED_AUTH_ALG"

    return-object v0

    :cond_a
    const/16 v0, 0xe

    if-ne p0, v0, :cond_b

    const-string/jumbo v0, "UNKNOWN_AUTH_TRANSACTION"

    return-object v0

    :cond_b
    const/16 v0, 0xf

    if-ne p0, v0, :cond_c

    const-string/jumbo v0, "CHALLENGE_FAIL"

    return-object v0

    :cond_c
    const/16 v0, 0x10

    if-ne p0, v0, :cond_d

    const-string/jumbo v0, "AUTH_TIMEOUT"

    return-object v0

    :cond_d
    const/16 v0, 0x11

    if-ne p0, v0, :cond_e

    const-string/jumbo v0, "AP_UNABLE_TO_HANDLE_NEW_STA"

    return-object v0

    :cond_e
    const/16 v0, 0x12

    if-ne p0, v0, :cond_f

    const-string/jumbo v0, "ASSOC_DENIED_RATES"

    return-object v0

    :cond_f
    const/16 v0, 0x13

    if-ne p0, v0, :cond_10

    const-string/jumbo v0, "ASSOC_DENIED_NOSHORT"

    return-object v0

    :cond_10
    const/16 v0, 0x16

    if-ne p0, v0, :cond_11

    const-string/jumbo v0, "SPEC_MGMT_REQUIRED"

    return-object v0

    :cond_11
    const/16 v0, 0x17

    if-ne p0, v0, :cond_12

    const-string/jumbo v0, "PWR_CAPABILITY_NOT_VALID"

    return-object v0

    :cond_12
    const/16 v0, 0x18

    if-ne p0, v0, :cond_13

    const-string/jumbo v0, "SUPPORTED_CHANNEL_NOT_VALID"

    return-object v0

    :cond_13
    const/16 v0, 0x19

    if-ne p0, v0, :cond_14

    const-string/jumbo v0, "ASSOC_DENIED_NO_SHORT_SLOT_TIME"

    return-object v0

    :cond_14
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_15

    const-string/jumbo v0, "ASSOC_DENIED_NO_HT"

    return-object v0

    :cond_15
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_16

    const-string/jumbo v0, "R0KH_UNREACHABLE"

    return-object v0

    :cond_16
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_17

    const-string/jumbo v0, "ASSOC_DENIED_NO_PCO"

    return-object v0

    :cond_17
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_18

    const-string/jumbo v0, "ASSOC_REJECTED_TEMPORARILY"

    return-object v0

    :cond_18
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_19

    const-string/jumbo v0, "ROBUST_MGMT_FRAME_POLICY_VIOLATION"

    return-object v0

    :cond_19
    const/16 v0, 0x20

    if-ne p0, v0, :cond_1a

    const-string/jumbo v0, "UNSPECIFIED_QOS_FAILURE"

    return-object v0

    :cond_1a
    const/16 v0, 0x21

    if-ne p0, v0, :cond_1b

    const-string/jumbo v0, "DENIED_INSUFFICIENT_BANDWIDTH"

    return-object v0

    :cond_1b
    const/16 v0, 0x22

    if-ne p0, v0, :cond_1c

    const-string/jumbo v0, "DENIED_POOR_CHANNEL_CONDITIONS"

    return-object v0

    :cond_1c
    const/16 v0, 0x23

    if-ne p0, v0, :cond_1d

    const-string/jumbo v0, "DENIED_QOS_NOT_SUPPORTED"

    return-object v0

    :cond_1d
    const/16 v0, 0x25

    if-ne p0, v0, :cond_1e

    const-string/jumbo v0, "REQUEST_DECLINED"

    return-object v0

    :cond_1e
    const/16 v0, 0x26

    if-ne p0, v0, :cond_1f

    const-string/jumbo v0, "INVALID_PARAMETERS"

    return-object v0

    :cond_1f
    const/16 v0, 0x27

    if-ne p0, v0, :cond_20

    const-string/jumbo v0, "REJECTED_WITH_SUGGESTED_CHANGES"

    return-object v0

    :cond_20
    const/16 v0, 0x28

    if-ne p0, v0, :cond_21

    const-string/jumbo v0, "INVALID_IE"

    return-object v0

    :cond_21
    const/16 v0, 0x29

    if-ne p0, v0, :cond_22

    const-string/jumbo v0, "GROUP_CIPHER_NOT_VALID"

    return-object v0

    :cond_22
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_23

    const-string/jumbo v0, "PAIRWISE_CIPHER_NOT_VALID"

    return-object v0

    :cond_23
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_24

    const-string/jumbo v0, "AKMP_NOT_VALID"

    return-object v0

    :cond_24
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_25

    const-string/jumbo v0, "UNSUPPORTED_RSN_IE_VERSION"

    return-object v0

    :cond_25
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_26

    const-string/jumbo v0, "INVALID_RSN_IE_CAPAB"

    return-object v0

    :cond_26
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_27

    const-string/jumbo v0, "CIPHER_REJECTED_PER_POLICY"

    return-object v0

    :cond_27
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_28

    const-string/jumbo v0, "TS_NOT_CREATED"

    return-object v0

    :cond_28
    const/16 v0, 0x30

    if-ne p0, v0, :cond_29

    const-string/jumbo v0, "DIRECT_LINK_NOT_ALLOWED"

    return-object v0

    :cond_29
    const/16 v0, 0x31

    if-ne p0, v0, :cond_2a

    const-string/jumbo v0, "DEST_STA_NOT_PRESENT"

    return-object v0

    :cond_2a
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2b

    const-string/jumbo v0, "DEST_STA_NOT_QOS_STA"

    return-object v0

    :cond_2b
    const/16 v0, 0x33

    if-ne p0, v0, :cond_2c

    const-string/jumbo v0, "ASSOC_DENIED_LISTEN_INT_TOO_LARGE"

    return-object v0

    :cond_2c
    const/16 v0, 0x34

    if-ne p0, v0, :cond_2d

    const-string/jumbo v0, "INVALID_FT_ACTION_FRAME_COUNT"

    return-object v0

    :cond_2d
    const/16 v0, 0x35

    if-ne p0, v0, :cond_2e

    const-string/jumbo v0, "INVALID_PMKID"

    return-object v0

    :cond_2e
    const/16 v0, 0x36

    if-ne p0, v0, :cond_2f

    const-string/jumbo v0, "INVALID_MDIE"

    return-object v0

    :cond_2f
    const/16 v0, 0x37

    if-ne p0, v0, :cond_30

    const-string/jumbo v0, "INVALID_FTIE"

    return-object v0

    :cond_30
    const/16 v0, 0x38

    if-ne p0, v0, :cond_31

    const-string/jumbo v0, "REQUESTED_TCLAS_NOT_SUPPORTED"

    return-object v0

    :cond_31
    const/16 v0, 0x39

    if-ne p0, v0, :cond_32

    const-string/jumbo v0, "INSUFFICIENT_TCLAS_PROCESSING_RESOURCES"

    return-object v0

    :cond_32
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_33

    const-string/jumbo v0, "TRY_ANOTHER_BSS"

    return-object v0

    :cond_33
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_34

    const-string/jumbo v0, "GAS_ADV_PROTO_NOT_SUPPORTED"

    return-object v0

    :cond_34
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_35

    const-string/jumbo v0, "NO_OUTSTANDING_GAS_REQ"

    return-object v0

    :cond_35
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_36

    const-string/jumbo v0, "GAS_RESP_NOT_RECEIVED"

    return-object v0

    :cond_36
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_37

    const-string/jumbo v0, "STA_TIMED_OUT_WAITING_FOR_GAS_RESP"

    return-object v0

    :cond_37
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_38

    const-string/jumbo v0, "GAS_RESP_LARGER_THAN_LIMIT"

    return-object v0

    :cond_38
    const/16 v0, 0x40

    if-ne p0, v0, :cond_39

    const-string/jumbo v0, "REQ_REFUSED_HOME"

    return-object v0

    :cond_39
    const/16 v0, 0x41

    if-ne p0, v0, :cond_3a

    const-string/jumbo v0, "ADV_SRV_UNREACHABLE"

    return-object v0

    :cond_3a
    const/16 v0, 0x43

    if-ne p0, v0, :cond_3b

    const-string/jumbo v0, "REQ_REFUSED_SSPN"

    return-object v0

    :cond_3b
    const/16 v0, 0x44

    if-ne p0, v0, :cond_3c

    const-string/jumbo v0, "REQ_REFUSED_UNAUTH_ACCESS"

    return-object v0

    :cond_3c
    const/16 v0, 0x48

    if-ne p0, v0, :cond_3d

    const-string/jumbo v0, "INVALID_RSNIE"

    return-object v0

    :cond_3d
    const/16 v0, 0x49

    if-ne p0, v0, :cond_3e

    const-string/jumbo v0, "U_APSD_COEX_NOT_SUPPORTED"

    return-object v0

    :cond_3e
    const/16 v0, 0x4a

    if-ne p0, v0, :cond_3f

    const-string/jumbo v0, "U_APSD_COEX_MODE_NOT_SUPPORTED"

    return-object v0

    :cond_3f
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_40

    const-string/jumbo v0, "BAD_INTERVAL_WITH_U_APSD_COEX"

    return-object v0

    :cond_40
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_41

    const-string/jumbo v0, "ANTI_CLOGGING_TOKEN_REQ"

    return-object v0

    :cond_41
    const/16 v0, 0x4d

    if-ne p0, v0, :cond_42

    const-string/jumbo v0, "FINITE_CYCLIC_GROUP_NOT_SUPPORTED"

    return-object v0

    :cond_42
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_43

    const-string/jumbo v0, "CANNOT_FIND_ALT_TBTT"

    return-object v0

    :cond_43
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_44

    const-string/jumbo v0, "TRANSMISSION_FAILURE"

    return-object v0

    :cond_44
    const/16 v0, 0x50

    if-ne p0, v0, :cond_45

    const-string/jumbo v0, "REQ_TCLAS_NOT_SUPPORTED"

    return-object v0

    :cond_45
    const/16 v0, 0x51

    if-ne p0, v0, :cond_46

    const-string/jumbo v0, "TCLAS_RESOURCES_EXCHAUSTED"

    return-object v0

    :cond_46
    const/16 v0, 0x52

    if-ne p0, v0, :cond_47

    const-string/jumbo v0, "REJECTED_WITH_SUGGESTED_BSS_TRANSITION"

    return-object v0

    :cond_47
    const/16 v0, 0x53

    if-ne p0, v0, :cond_48

    const-string/jumbo v0, "REJECT_WITH_SCHEDULE"

    return-object v0

    :cond_48
    const/16 v0, 0x54

    if-ne p0, v0, :cond_49

    const-string/jumbo v0, "REJECT_NO_WAKEUP_SPECIFIED"

    return-object v0

    :cond_49
    const/16 v0, 0x55

    if-ne p0, v0, :cond_4a

    const-string/jumbo v0, "SUCCESS_POWER_SAVE_MODE"

    return-object v0

    :cond_4a
    const/16 v0, 0x56

    if-ne p0, v0, :cond_4b

    const-string/jumbo v0, "PENDING_ADMITTING_FST_SESSION"

    return-object v0

    :cond_4b
    const/16 v0, 0x57

    if-ne p0, v0, :cond_4c

    const-string/jumbo v0, "PERFORMING_FST_NOW"

    return-object v0

    :cond_4c
    const/16 v0, 0x58

    if-ne p0, v0, :cond_4d

    const-string/jumbo v0, "PENDING_GAP_IN_BA_WINDOW"

    return-object v0

    :cond_4d
    const/16 v0, 0x59

    if-ne p0, v0, :cond_4e

    const-string/jumbo v0, "REJECT_U_PID_SETTING"

    return-object v0

    :cond_4e
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_4f

    const-string/jumbo v0, "REFUSED_EXTERNAL_REASON"

    return-object v0

    :cond_4f
    const/16 v0, 0x5d

    if-ne p0, v0, :cond_50

    const-string/jumbo v0, "REFUSED_AP_OUT_OF_MEMORY"

    return-object v0

    :cond_50
    const/16 v0, 0x5e

    if-ne p0, v0, :cond_51

    const-string/jumbo v0, "REJECTED_EMERGENCY_SERVICE_NOT_SUPPORTED"

    return-object v0

    :cond_51
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_52

    const-string/jumbo v0, "QUERY_RESP_OUTSTANDING"

    return-object v0

    :cond_52
    const/16 v0, 0x60

    if-ne p0, v0, :cond_53

    const-string/jumbo v0, "REJECT_DSE_BAND"

    return-object v0

    :cond_53
    const/16 v0, 0x61

    if-ne p0, v0, :cond_54

    const-string/jumbo v0, "TCLAS_PROCESSING_TERMINATED"

    return-object v0

    :cond_54
    const/16 v0, 0x62

    if-ne p0, v0, :cond_55

    const-string/jumbo v0, "TS_SCHEDULE_CONFLICT"

    return-object v0

    :cond_55
    const/16 v0, 0x63

    if-ne p0, v0, :cond_56

    const-string/jumbo v0, "DENIED_WITH_SUGGESTED_BAND_AND_CHANNEL"

    return-object v0

    :cond_56
    const/16 v0, 0x64

    if-ne p0, v0, :cond_57

    const-string/jumbo v0, "MCCAOP_RESERVATION_CONFLICT"

    return-object v0

    :cond_57
    const/16 v0, 0x65

    if-ne p0, v0, :cond_58

    const-string/jumbo v0, "MAF_LIMIT_EXCEEDED"

    return-object v0

    :cond_58
    const/16 v0, 0x66

    if-ne p0, v0, :cond_59

    const-string/jumbo v0, "MCCA_TRACK_LIMIT_EXCEEDED"

    return-object v0

    :cond_59
    const/16 v0, 0x67

    if-ne p0, v0, :cond_5a

    const-string/jumbo v0, "DENIED_DUE_TO_SPECTRUM_MANAGEMENT"

    return-object v0

    :cond_5a
    const/16 v0, 0x68

    if-ne p0, v0, :cond_5b

    const-string/jumbo v0, "ASSOC_DENIED_NO_VHT"

    return-object v0

    :cond_5b
    const/16 v0, 0x69

    if-ne p0, v0, :cond_5c

    const-string/jumbo v0, "ENABLEMENT_DENIED"

    return-object v0

    :cond_5c
    const/16 v0, 0x6a

    if-ne p0, v0, :cond_5d

    const-string/jumbo v0, "RESTRICTION_FROM_AUTHORIZED_GDB"

    return-object v0

    :cond_5d
    const/16 v0, 0x6b

    if-ne p0, v0, :cond_5e

    const-string/jumbo v0, "AUTHORIZATION_DEENABLED"

    return-object v0

    :cond_5e
    const/16 v0, 0x70

    if-ne p0, v0, :cond_5f

    const-string/jumbo v0, "FILS_AUTHENTICATION_FAILURE"

    return-object v0

    :cond_5f
    const/16 v0, 0x71

    if-ne p0, v0, :cond_60

    const-string/jumbo v0, "UNKNOWN_AUTHENTICATION_SERVER"

    return-object v0

    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
