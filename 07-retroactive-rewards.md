# 7. Retroactive Contributor Rewards

> **TL;DR: How Rewards Work**
>
> 1.  Once per quarter, we reward past work from a dedicated fund.
> 2.  Every Member gives points to peers they feel created value.
> 3.  Points from members who are *also* highly valued are worth more.
> 4.  The fund is split based on these final, reputation-weighted scores.

## Philosophy: Rewarding Past Contributions

To sustain our community, we must support our active contributors. This section outlines a process for retroactively rewarding **Members** for the valuable work they have already completed.

This system is not for funding future projects. Its sole purpose is to reward the valuable contributions of individuals, trusting them to continue creating impact. It acknowledges that while all Members are valued, the level of active contribution varies over time. A Member's influence in the allocation process is therefore directly tied to their recognized contributions within that Epoch.

## The Process: Peer-Based, Reputation-Weighted Allocation

The system operates in regular cycles, which we will call **"Funding Epochs"** (e.g., once per quarter).

#### 1. The Funding Pool
For each Epoch, a specific amount of funds is allocated to the Contributor Rewards pool, funded by the W3PN treasury or direct donations.

#### 2. The Allocation Phase
At the end of each Epoch, a short **"Allocation Phase"** (e.g., one week) begins.

* **Initial Allocation:** Every **Member** receives 100 non-financial "Allocation Points" to distribute. They privately allocate their points among their peers (you cannot allocate points to yourself).
* **Mandatory Justification:** To ensure allocations are based on contribution, not just friendship, a **brief, public justification MUST be provided for each allocation.** For example: "30 points to Alice for her research paper," "50 points to Bob for managing the translation effort."

#### 3. Calculation and Distribution: The Reputation Weighting
This is the crucial step that amplifies the signal from active contributors.

* **Step A: Calculate Raw Scores.** First, a "raw score" for each Member is calculated based on the points they received.
* **Step B: Calculate Allocator Weights.** The "weight" of each allocator is determined by their own raw score. This means allocations from members who were themselves highly recognized by the community carry more influence.
* **Step C: Calculate Final Weighted Scores.** The final score for each Member is recalculated using the weighted allocations. The points you receive from someone are multiplied by their allocator weight.
* **Step D: Distribute Funds.** Each Member can then claim a share of the Funding Pool proportional to their **final weighted score**.

## How the Calculation Works: A Step-by-Step Guide

The key is a two-pass system. The first pass identifies who the community values. The second pass uses that information to give more weight to their opinions.

1. **The Raw Allocation Pass (Who is valued?):** We sum the points each person *receives*. This gives every Member a **"Raw Score."**
2. **The Weighted Allocation Pass (Whose opinion matters more?):** We go back to the original allocations. The "power" of an allocation is multiplied by the allocator's **Raw Score**. We calculate a **"Final Score"** for each Member by summing up the *weighted* points they received.
3. **Distribution:** The fund is distributed proportionally based on each Member's **Final Score**.

## Full-Featured Example

Let's imagine a simplified W3PN with four active members.

* **Funding Pool:** 10 000 $ for this Epoch.
* **Members:** Alice (core contributor), Bob (regular contributor), Carol (occasional contributor), David (inactive member).

#### Phase 1: Allocation and Raw Scores

* **Alice gives:** 100 points to Bob.
* **Bob gives:** 70 to Alice, 30 to Carol.
* **Carol gives:** 80 to Alice, 20 to Bob.
* **David gives:** 100 to Alice.

| Recipient | Points From Alice | Points From Bob | Points From Carol | Points From David | **Raw Score** |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Alice** | (self) | 70 | 80 | 100 | **250** |
| **Bob** | 100 | (self) | 20 | 0 | **120** |
| **Carol** | 0 | 30 | (self) | 0 | **30** |
| **David** | 0 | 0 | 0 | (self) | **0** |

#### Phase 2: Weighted Calculation and Final Scores

We use the Raw Scores as weights for each allocation.

| Allocation (From → To) | Points Given | Allocator's Raw Score | **Weighted Allocation** |
| :--- | :--- | :--- | :--- |
| Alice → Bob | 100 | 250 | 100 * 250 = **25 000** |
| Bob → Alice | 70 | 120 | 70 * 120 = **8 400** |
| Bob → Carol | 30 | 120 | 30 * 120 = **3 600** |
| Carol → Alice | 80 | 30 | 80 * 30 = **2 400** |
| Carol → Bob | 20 | 30 | 20 * 30 = **600** |
| David → Alice | 100 | 0 | 100 * 0 = **0** |

* **Alice's Final Score:** 8 400 (from Bob) + 2 400 (from Carol) + 0 (from David) = **10 800**
* **Bob's Final Score:** 25 000 (from Alice) + 600 (from Carol) = **25 600**
* **Carol's Final Score:** 3 600 (from Bob) = **3 600**
* **Total Pool of Final Score Points:** 10 800 + 25 600 + 3 600 = **40 000**

#### Phase 3: Final Payout

| Member | Final Score | % of Total Score | **Payout (from 10 000 \$)** |
| :--- | :--- | :--- | :--- |
| Alice | 10 800 | 27% | **2 700 \$** |
| Bob | 25 600 | 64% | **6 400 \$** |
| Carol | 3 600 | 9% | **900 \$** |

This result correctly rewards Bob the most, as his contributions were recognized by the most highly-valued member (Alice).

> **Why David’s allocation had no impact:**
>
> Notice that while David allocated 100 points to Alice, her Final Score received 0 points from him. This is a core feature of the system. Because David was inactive and received 0 points himself, his "Allocator's Raw Score" was 0. The calculation (`100 * 0`) correctly gave his allocation zero weight. This demonstrates how the system automatically and transparently amplifies the signal from active, recognized contributors.

## Why This Weighted Model is Essential

* **Amplifies Signal, Reduces Noise:** It gives more weight to the opinions of members who are "in the trenches" and have the most context. This effectively resists low-context "popularity contest" voting from less engaged members.

* **Ensures Influence is Earned, Not Held:** Power in this system is not static. It must be re-earned each Epoch through recognized work, creating a dynamic where influence directly follows recent, valuable contribution.

* **Creates a Virtuous Cycle of Merit:** Being recognized as a valuable contributor gives you a stronger voice in recognizing others. This reinforces and rewards expertise without creating a separate, exclusive class of "super-voters."