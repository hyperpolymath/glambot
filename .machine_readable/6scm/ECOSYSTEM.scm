;; SPDX-License-Identifier: PMPL-1.0-or-later
;; ECOSYSTEM.scm - Ecosystem relationships for glambot

(ecosystem
  (version "1.0.0")
  (name "glambot")
  (type "finisher-bot")
  (purpose "Presentation and aesthetics enforcement for release-ready repositories")

  (position-in-ecosystem
    (tier "finisher")
    (role "Ensures repositories are polished and presentable before release")
    (coordinates-with ("finishing-bot" "seambot")))

  (related-projects
    (upstream
      (gitbot-fleet
        (relationship "member-of")
        (integration "Receives findings from verifier bots, applies presentation fixes"))
      (hypatia
        (relationship "receives-rulesets-from")
        (integration "Follows hypatia presentation rules")))

    (sibling
      (finishing-bot
        (relationship "complementary")
        (description "Glambot handles presentation, finishing-bot handles release readiness"))
      (seambot
        (relationship "complementary")
        (description "Seambot audits architecture, glambot polishes presentation"))))

  (dependencies
    (build-time ("rust" "cargo"))
    (runtime ("git" "github-api")))

  (what-this-is
    "Bot that enforces presentation standards: README formatting, badge consistency, documentation structure")

  (what-this-is-not
    "Not a linter (doesn't check code style)"
    "Not a structural validator (that's rhodibot's job)"
    "Not a content generator (helps format existing content)"))
