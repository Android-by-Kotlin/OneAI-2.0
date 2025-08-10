.class public Landroid/gov/nist/javax/sip/header/MaxForwards;
.super Landroid/gov/nist/javax/sip/header/SIPHeader;
.source "MaxForwards.java"

# interfaces
.implements Landroid/javax/sip/header/MaxForwardsHeader;


# static fields
.field private static final serialVersionUID:J = -0x2afa4eca0522fa07L


# instance fields
.field protected maxForwards:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    const-string v0, "Max-Forwards"

    invoke-direct {p0, v0}, Landroid/gov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "m"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/javax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 59
    const-string v0, "Max-Forwards"

    invoke-direct {p0, v0}, Landroid/gov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1}, Landroid/gov/nist/javax/sip/header/MaxForwards;->setMaxForwards(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public decrementMaxForwards()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/javax/sip/header/TooManyHopsException;
        }
    .end annotation

    .line 105
    iget v0, p0, Landroid/gov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    if-lez v0, :cond_0

    .line 106
    iget v0, p0, Landroid/gov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/gov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    .line 108
    return-void

    .line 107
    :cond_0
    new-instance v0, Landroid/javax/sip/header/TooManyHopsException;

    const-string/jumbo v1, "has already reached 0!"

    invoke-direct {v0, v1}, Landroid/javax/sip/header/TooManyHopsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/gov/nist/javax/sip/header/MaxForwards;->encodeBody(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .line 92
    iget v0, p0, Landroid/gov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 112
    :cond_0
    instance-of v1, p1, Landroid/javax/sip/header/MaxForwardsHeader;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 113
    move-object v1, p1

    check-cast v1, Landroid/javax/sip/header/MaxForwardsHeader;

    .line 114
    .local v1, "o":Landroid/javax/sip/header/MaxForwardsHeader;
    invoke-virtual {p0}, Landroid/gov/nist/javax/sip/header/MaxForwards;->getMaxForwards()I

    move-result v3

    invoke-interface {v1}, Landroid/javax/sip/header/MaxForwardsHeader;->getMaxForwards()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 116
    .end local v1    # "o":Landroid/javax/sip/header/MaxForwardsHeader;
    :cond_2
    return v2
.end method

.method public getMaxForwards()I
    .locals 1

    .line 67
    iget v0, p0, Landroid/gov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    return v0
.end method

.method public hasReachedZero()Z
    .locals 1

    .line 99
    iget v0, p0, Landroid/gov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMaxForwards(I)V
    .locals 3
    .param p1, "maxForwards"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/javax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 76
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 79
    iput p1, p0, Landroid/gov/nist/javax/sip/header/MaxForwards;->maxForwards:I

    .line 80
    return-void

    .line 77
    :cond_0
    new-instance v0, Landroid/javax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad max forwards value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/javax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
