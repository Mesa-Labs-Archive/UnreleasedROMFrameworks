.class public final Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$ReasonCode;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReasonCode"
.end annotation


# static fields
.field public static final AKMP_NOT_VALID:I = 0x14

.field public static final AUTHORIZED_ACCESS_LIMIT_REACHED:I = 0x2e

.field public static final BAD_CIPHER_OR_AKM:I = 0x1d

.field public static final BSS_TRANSITION_DISASSOC:I = 0xc

.field public static final CIPHER_SUITE_REJECTED:I = 0x18

.field public static final CLASS2_FRAME_FROM_NONAUTH_STA:I = 0x6

.field public static final CLASS3_FRAME_FROM_NONASSOC_STA:I = 0x7

.field public static final DEAUTH_LEAVING:I = 0x3

.field public static final DISASSOC_AP_BUSY:I = 0x5

.field public static final DISASSOC_DUE_TO_INACTIVITY:I = 0x4

.field public static final DISASSOC_LOW_ACK:I = 0x22

.field public static final DISASSOC_STA_HAS_LEFT:I = 0x8

.field public static final END_TS_BA_DLS:I = 0x25

.field public static final EXCEEDED_TXOP:I = 0x23

.field public static final EXTERNAL_SERVICE_REQUIREMENTS:I = 0x2f

.field public static final FOURWAY_HANDSHAKE_TIMEOUT:I = 0xf

.field public static final GROUP_CIPHER_NOT_VALID:I = 0x12

.field public static final GROUP_KEY_UPDATE_TIMEOUT:I = 0x10

.field public static final IEEE_802_1X_AUTH_FAILED:I = 0x17

.field public static final IE_IN_4WAY_DIFFERS:I = 0x11

.field public static final INVALID_FTE:I = 0x33

.field public static final INVALID_FT_ACTION_FRAME_COUNT:I = 0x30

.field public static final INVALID_IE:I = 0xd

.field public static final INVALID_MDE:I = 0x32

.field public static final INVALID_PMKID:I = 0x31

.field public static final INVALID_RSN_IE_CAPAB:I = 0x16

.field public static final MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS:I = 0x40

.field public static final MESH_CHANNEL_SWITCH_REGULATORY_REQ:I = 0x41

.field public static final MESH_CHANNEL_SWITCH_UNSPECIFIED:I = 0x42

.field public static final MESH_CLOSE_RCVD:I = 0x37

.field public static final MESH_CONFIG_POLICY_VIOLATION:I = 0x36

.field public static final MESH_CONFIRM_TIMEOUT:I = 0x39

.field public static final MESH_INCONSISTENT_PARAMS:I = 0x3b

.field public static final MESH_INVALID_GTK:I = 0x3a

.field public static final MESH_INVALID_SECURITY_CAP:I = 0x3c

.field public static final MESH_MAX_PEERS:I = 0x35

.field public static final MESH_MAX_RETRIES:I = 0x38

.field public static final MESH_PATH_ERROR_DEST_UNREACHABLE:I = 0x3f

.field public static final MESH_PATH_ERROR_NO_FORWARDING_INFO:I = 0x3e

.field public static final MESH_PATH_ERROR_NO_PROXY_INFO:I = 0x3d

.field public static final MESH_PEERING_CANCELLED:I = 0x34

.field public static final MICHAEL_MIC_FAILURE:I = 0xe

.field public static final NOT_AUTHORIZED_THIS_LOCATION:I = 0x1e

.field public static final NOT_ENOUGH_BANDWIDTH:I = 0x21

.field public static final NO_SSP_ROAMING_AGREEMENT:I = 0x1c

.field public static final PAIRWISE_CIPHER_NOT_VALID:I = 0x13

.field public static final PEERKEY_MISMATCH:I = 0x2d

.field public static final PREV_AUTH_NOT_VALID:I = 0x2

.field public static final PWR_CAPABILITY_NOT_VALID:I = 0xa

.field public static final SERVICE_CHANGE_PRECLUDES_TS:I = 0x1f

.field public static final SSP_REQUESTED_DISASSOC:I = 0x1b

.field public static final STA_LEAVING:I = 0x24

.field public static final STA_REQ_ASSOC_WITHOUT_AUTH:I = 0x9

.field public static final SUPPORTED_CHANNEL_NOT_VALID:I = 0xb

.field public static final TDLS_TEARDOWN_UNREACHABLE:I = 0x19

.field public static final TDLS_TEARDOWN_UNSPECIFIED:I = 0x1a

.field public static final TIMEOUT:I = 0x27

.field public static final UNKNOWN_TS_BA:I = 0x26

.field public static final UNSPECIFIED:I = 0x1

.field public static final UNSPECIFIED_QOS_REASON:I = 0x20

.field public static final UNSUPPORTED_RSN_IE_VERSION:I = 0x15


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

    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "UNSPECIFIED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "PREV_AUTH_NOT_VALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2

    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "DEAUTH_LEAVING"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3

    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "DISASSOC_DUE_TO_INACTIVITY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x4

    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "DISASSOC_AP_BUSY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x5

    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    const-string/jumbo v2, "CLASS2_FRAME_FROM_NONAUTH_STA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x6

    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "CLASS3_FRAME_FROM_NONASSOC_STA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x7

    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    const-string/jumbo v2, "DISASSOC_STA_HAS_LEFT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x8

    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    const-string/jumbo v2, "STA_REQ_ASSOC_WITHOUT_AUTH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x9

    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    const-string/jumbo v2, "PWR_CAPABILITY_NOT_VALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xa

    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    const-string/jumbo v2, "SUPPORTED_CHANNEL_NOT_VALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xb

    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    const-string/jumbo v2, "BSS_TRANSITION_DISASSOC"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xc

    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    const-string/jumbo v2, "INVALID_IE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xd

    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    const-string/jumbo v2, "MICHAEL_MIC_FAILURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xe

    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    const-string/jumbo v2, "FOURWAY_HANDSHAKE_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0xf

    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    const-string/jumbo v2, "GROUP_KEY_UPDATE_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x10

    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    const-string/jumbo v2, "IE_IN_4WAY_DIFFERS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x11

    :cond_10
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    const-string/jumbo v2, "GROUP_CIPHER_NOT_VALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x12

    :cond_11
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_12

    const-string/jumbo v2, "PAIRWISE_CIPHER_NOT_VALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x13

    :cond_12
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_13

    const-string/jumbo v2, "AKMP_NOT_VALID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x14

    :cond_13
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_14

    const-string/jumbo v2, "UNSUPPORTED_RSN_IE_VERSION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x15

    :cond_14
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_15

    const-string/jumbo v2, "INVALID_RSN_IE_CAPAB"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x16

    :cond_15
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    const-string/jumbo v2, "IEEE_802_1X_AUTH_FAILED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x17

    :cond_16
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_17

    const-string/jumbo v2, "CIPHER_SUITE_REJECTED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x18

    :cond_17
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_18

    const-string/jumbo v2, "TDLS_TEARDOWN_UNREACHABLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x19

    :cond_18
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_19

    const-string/jumbo v2, "TDLS_TEARDOWN_UNSPECIFIED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1a

    :cond_19
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1a

    const-string/jumbo v2, "SSP_REQUESTED_DISASSOC"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1b

    :cond_1a
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_1b

    const-string/jumbo v2, "NO_SSP_ROAMING_AGREEMENT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1c

    :cond_1b
    and-int/lit8 v2, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_1c

    const-string/jumbo v2, "BAD_CIPHER_OR_AKM"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1d

    :cond_1c
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_1d

    const-string/jumbo v2, "NOT_AUTHORIZED_THIS_LOCATION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1e

    :cond_1d
    and-int/lit8 v2, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1e

    const-string/jumbo v2, "SERVICE_CHANGE_PRECLUDES_TS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x1f

    :cond_1e
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1f

    const-string/jumbo v2, "UNSPECIFIED_QOS_REASON"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x20

    :cond_1f
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_20

    const-string/jumbo v2, "NOT_ENOUGH_BANDWIDTH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x21

    :cond_20
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_21

    const-string/jumbo v2, "DISASSOC_LOW_ACK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x22

    :cond_21
    and-int/lit8 v2, p0, 0x23

    const/16 v3, 0x23

    if-ne v2, v3, :cond_22

    const-string/jumbo v2, "EXCEEDED_TXOP"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x23

    :cond_22
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_23

    const-string/jumbo v2, "STA_LEAVING"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x24

    :cond_23
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_24

    const-string/jumbo v2, "END_TS_BA_DLS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x25

    :cond_24
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_25

    const-string/jumbo v2, "UNKNOWN_TS_BA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x26

    :cond_25
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_26

    const-string/jumbo v2, "TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x27

    :cond_26
    and-int/lit8 v2, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_27

    const-string/jumbo v2, "PEERKEY_MISMATCH"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2d

    :cond_27
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_28

    const-string/jumbo v2, "AUTHORIZED_ACCESS_LIMIT_REACHED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2e

    :cond_28
    and-int/lit8 v2, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_29

    const-string/jumbo v2, "EXTERNAL_SERVICE_REQUIREMENTS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x2f

    :cond_29
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2a

    const-string/jumbo v2, "INVALID_FT_ACTION_FRAME_COUNT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x30

    :cond_2a
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2b

    const-string/jumbo v2, "INVALID_PMKID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x31

    :cond_2b
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_2c

    const-string/jumbo v2, "INVALID_MDE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x32

    :cond_2c
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_2d

    const-string/jumbo v2, "INVALID_FTE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x33

    :cond_2d
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_2e

    const-string/jumbo v2, "MESH_PEERING_CANCELLED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x34

    :cond_2e
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_2f

    const-string/jumbo v2, "MESH_MAX_PEERS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x35

    :cond_2f
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_30

    const-string/jumbo v2, "MESH_CONFIG_POLICY_VIOLATION"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x36

    :cond_30
    and-int/lit8 v2, p0, 0x37

    const/16 v3, 0x37

    if-ne v2, v3, :cond_31

    const-string/jumbo v2, "MESH_CLOSE_RCVD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x37

    :cond_31
    and-int/lit8 v2, p0, 0x38

    const/16 v3, 0x38

    if-ne v2, v3, :cond_32

    const-string/jumbo v2, "MESH_MAX_RETRIES"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x38

    :cond_32
    and-int/lit8 v2, p0, 0x39

    const/16 v3, 0x39

    if-ne v2, v3, :cond_33

    const-string/jumbo v2, "MESH_CONFIRM_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x39

    :cond_33
    and-int/lit8 v2, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_34

    const-string/jumbo v2, "MESH_INVALID_GTK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3a

    :cond_34
    and-int/lit8 v2, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_35

    const-string/jumbo v2, "MESH_INCONSISTENT_PARAMS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3b

    :cond_35
    and-int/lit8 v2, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_36

    const-string/jumbo v2, "MESH_INVALID_SECURITY_CAP"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3c

    :cond_36
    and-int/lit8 v2, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_37

    const-string/jumbo v2, "MESH_PATH_ERROR_NO_PROXY_INFO"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3d

    :cond_37
    and-int/lit8 v2, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_38

    const-string/jumbo v2, "MESH_PATH_ERROR_NO_FORWARDING_INFO"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3e

    :cond_38
    and-int/lit8 v2, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_39

    const-string/jumbo v2, "MESH_PATH_ERROR_DEST_UNREACHABLE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x3f

    :cond_39
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_3a

    const-string/jumbo v2, "MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x40

    :cond_3a
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_3b

    const-string/jumbo v2, "MESH_CHANNEL_SWITCH_REGULATORY_REQ"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x41

    :cond_3b
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_3c

    const-string/jumbo v2, "MESH_CHANNEL_SWITCH_UNSPECIFIED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v0, v0, 0x42

    :cond_3c
    if-eq p0, v0, :cond_3d

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

    :cond_3d
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "UNSPECIFIED"

    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "PREV_AUTH_NOT_VALID"

    return-object v0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "DEAUTH_LEAVING"

    return-object v0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "DISASSOC_DUE_TO_INACTIVITY"

    return-object v0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string/jumbo v0, "DISASSOC_AP_BUSY"

    return-object v0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string/jumbo v0, "CLASS2_FRAME_FROM_NONAUTH_STA"

    return-object v0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string/jumbo v0, "CLASS3_FRAME_FROM_NONASSOC_STA"

    return-object v0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string/jumbo v0, "DISASSOC_STA_HAS_LEFT"

    return-object v0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const-string/jumbo v0, "STA_REQ_ASSOC_WITHOUT_AUTH"

    return-object v0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const-string/jumbo v0, "PWR_CAPABILITY_NOT_VALID"

    return-object v0

    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const-string/jumbo v0, "SUPPORTED_CHANNEL_NOT_VALID"

    return-object v0

    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    const-string/jumbo v0, "BSS_TRANSITION_DISASSOC"

    return-object v0

    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    const-string/jumbo v0, "INVALID_IE"

    return-object v0

    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    const-string/jumbo v0, "MICHAEL_MIC_FAILURE"

    return-object v0

    :cond_d
    const/16 v0, 0xf

    if-ne p0, v0, :cond_e

    const-string/jumbo v0, "FOURWAY_HANDSHAKE_TIMEOUT"

    return-object v0

    :cond_e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_f

    const-string/jumbo v0, "GROUP_KEY_UPDATE_TIMEOUT"

    return-object v0

    :cond_f
    const/16 v0, 0x11

    if-ne p0, v0, :cond_10

    const-string/jumbo v0, "IE_IN_4WAY_DIFFERS"

    return-object v0

    :cond_10
    const/16 v0, 0x12

    if-ne p0, v0, :cond_11

    const-string/jumbo v0, "GROUP_CIPHER_NOT_VALID"

    return-object v0

    :cond_11
    const/16 v0, 0x13

    if-ne p0, v0, :cond_12

    const-string/jumbo v0, "PAIRWISE_CIPHER_NOT_VALID"

    return-object v0

    :cond_12
    const/16 v0, 0x14

    if-ne p0, v0, :cond_13

    const-string/jumbo v0, "AKMP_NOT_VALID"

    return-object v0

    :cond_13
    const/16 v0, 0x15

    if-ne p0, v0, :cond_14

    const-string/jumbo v0, "UNSUPPORTED_RSN_IE_VERSION"

    return-object v0

    :cond_14
    const/16 v0, 0x16

    if-ne p0, v0, :cond_15

    const-string/jumbo v0, "INVALID_RSN_IE_CAPAB"

    return-object v0

    :cond_15
    const/16 v0, 0x17

    if-ne p0, v0, :cond_16

    const-string/jumbo v0, "IEEE_802_1X_AUTH_FAILED"

    return-object v0

    :cond_16
    const/16 v0, 0x18

    if-ne p0, v0, :cond_17

    const-string/jumbo v0, "CIPHER_SUITE_REJECTED"

    return-object v0

    :cond_17
    const/16 v0, 0x19

    if-ne p0, v0, :cond_18

    const-string/jumbo v0, "TDLS_TEARDOWN_UNREACHABLE"

    return-object v0

    :cond_18
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_19

    const-string/jumbo v0, "TDLS_TEARDOWN_UNSPECIFIED"

    return-object v0

    :cond_19
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1a

    const-string/jumbo v0, "SSP_REQUESTED_DISASSOC"

    return-object v0

    :cond_1a
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1b

    const-string/jumbo v0, "NO_SSP_ROAMING_AGREEMENT"

    return-object v0

    :cond_1b
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_1c

    const-string/jumbo v0, "BAD_CIPHER_OR_AKM"

    return-object v0

    :cond_1c
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1d

    const-string/jumbo v0, "NOT_AUTHORIZED_THIS_LOCATION"

    return-object v0

    :cond_1d
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1e

    const-string/jumbo v0, "SERVICE_CHANGE_PRECLUDES_TS"

    return-object v0

    :cond_1e
    const/16 v0, 0x20

    if-ne p0, v0, :cond_1f

    const-string/jumbo v0, "UNSPECIFIED_QOS_REASON"

    return-object v0

    :cond_1f
    const/16 v0, 0x21

    if-ne p0, v0, :cond_20

    const-string/jumbo v0, "NOT_ENOUGH_BANDWIDTH"

    return-object v0

    :cond_20
    const/16 v0, 0x22

    if-ne p0, v0, :cond_21

    const-string/jumbo v0, "DISASSOC_LOW_ACK"

    return-object v0

    :cond_21
    const/16 v0, 0x23

    if-ne p0, v0, :cond_22

    const-string/jumbo v0, "EXCEEDED_TXOP"

    return-object v0

    :cond_22
    const/16 v0, 0x24

    if-ne p0, v0, :cond_23

    const-string/jumbo v0, "STA_LEAVING"

    return-object v0

    :cond_23
    const/16 v0, 0x25

    if-ne p0, v0, :cond_24

    const-string/jumbo v0, "END_TS_BA_DLS"

    return-object v0

    :cond_24
    const/16 v0, 0x26

    if-ne p0, v0, :cond_25

    const-string/jumbo v0, "UNKNOWN_TS_BA"

    return-object v0

    :cond_25
    const/16 v0, 0x27

    if-ne p0, v0, :cond_26

    const-string/jumbo v0, "TIMEOUT"

    return-object v0

    :cond_26
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_27

    const-string/jumbo v0, "PEERKEY_MISMATCH"

    return-object v0

    :cond_27
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_28

    const-string/jumbo v0, "AUTHORIZED_ACCESS_LIMIT_REACHED"

    return-object v0

    :cond_28
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_29

    const-string/jumbo v0, "EXTERNAL_SERVICE_REQUIREMENTS"

    return-object v0

    :cond_29
    const/16 v0, 0x30

    if-ne p0, v0, :cond_2a

    const-string/jumbo v0, "INVALID_FT_ACTION_FRAME_COUNT"

    return-object v0

    :cond_2a
    const/16 v0, 0x31

    if-ne p0, v0, :cond_2b

    const-string/jumbo v0, "INVALID_PMKID"

    return-object v0

    :cond_2b
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2c

    const-string/jumbo v0, "INVALID_MDE"

    return-object v0

    :cond_2c
    const/16 v0, 0x33

    if-ne p0, v0, :cond_2d

    const-string/jumbo v0, "INVALID_FTE"

    return-object v0

    :cond_2d
    const/16 v0, 0x34

    if-ne p0, v0, :cond_2e

    const-string/jumbo v0, "MESH_PEERING_CANCELLED"

    return-object v0

    :cond_2e
    const/16 v0, 0x35

    if-ne p0, v0, :cond_2f

    const-string/jumbo v0, "MESH_MAX_PEERS"

    return-object v0

    :cond_2f
    const/16 v0, 0x36

    if-ne p0, v0, :cond_30

    const-string/jumbo v0, "MESH_CONFIG_POLICY_VIOLATION"

    return-object v0

    :cond_30
    const/16 v0, 0x37

    if-ne p0, v0, :cond_31

    const-string/jumbo v0, "MESH_CLOSE_RCVD"

    return-object v0

    :cond_31
    const/16 v0, 0x38

    if-ne p0, v0, :cond_32

    const-string/jumbo v0, "MESH_MAX_RETRIES"

    return-object v0

    :cond_32
    const/16 v0, 0x39

    if-ne p0, v0, :cond_33

    const-string/jumbo v0, "MESH_CONFIRM_TIMEOUT"

    return-object v0

    :cond_33
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_34

    const-string/jumbo v0, "MESH_INVALID_GTK"

    return-object v0

    :cond_34
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_35

    const-string/jumbo v0, "MESH_INCONSISTENT_PARAMS"

    return-object v0

    :cond_35
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_36

    const-string/jumbo v0, "MESH_INVALID_SECURITY_CAP"

    return-object v0

    :cond_36
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_37

    const-string/jumbo v0, "MESH_PATH_ERROR_NO_PROXY_INFO"

    return-object v0

    :cond_37
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_38

    const-string/jumbo v0, "MESH_PATH_ERROR_NO_FORWARDING_INFO"

    return-object v0

    :cond_38
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_39

    const-string/jumbo v0, "MESH_PATH_ERROR_DEST_UNREACHABLE"

    return-object v0

    :cond_39
    const/16 v0, 0x40

    if-ne p0, v0, :cond_3a

    const-string/jumbo v0, "MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS"

    return-object v0

    :cond_3a
    const/16 v0, 0x41

    if-ne p0, v0, :cond_3b

    const-string/jumbo v0, "MESH_CHANNEL_SWITCH_REGULATORY_REQ"

    return-object v0

    :cond_3b
    const/16 v0, 0x42

    if-ne p0, v0, :cond_3c

    const-string/jumbo v0, "MESH_CHANNEL_SWITCH_UNSPECIFIED"

    return-object v0

    :cond_3c
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
