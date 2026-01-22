;; SPDX-License-Identifier: PMPL-1.0-or-later
;; META.scm - Meta-level information for glambot

(meta
  (version "1.0.0")
  (project "glambot")

  (architecture-decisions
    ((adr-001 . ((status . "accepted")
                 (date . "2025-01-01")
                 (context . "Bots need to ensure repos are presentable before release")
                 (decision . "Create dedicated bot for presentation/aesthetics separate from content validation")
                 (consequences . ((positive . ("Clear separation of concerns"
                                              "Presentation rules independent of content rules"
                                              "Easy to skip for internal-only repos"))
                                 (negative . ("Another bot to maintain"
                                            "May overlap with finishing-bot in some checks"))))))

     (adr-002 . ((status . "accepted")
                 (decision . "Focus on README, badges, documentation structure")
                 (rationale . "These are the first things users see, highest impact for presentation")))

     (adr-003 . ((status . "accepted")
                 (decision . "Auto-fix when safe (formatting), flag for review when subjective (wording)")
                 (rationale . "Balance automation with human judgment")))))

  (development-practices
    (code-style . "Rust standard style, rustfmt + clippy")
    (testing . "Unit tests for each presentation rule")
    (versioning . "Semantic versioning")
    (documentation . "README + inline docs"))

  (design-rationale
    ((why-separate-from-finishing-bot . "Presentation is orthogonal to release readiness. Internal tools may not need polish, but all releases should be presentable.")
     (why-rust . "Consistent with fleet, type safety, performance")
     (why-auto-fix . "Formatting is objective, safe to automate"))))
