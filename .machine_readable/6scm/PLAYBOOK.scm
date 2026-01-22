;; SPDX-License-Identifier: PMPL-1.0-or-later
;; PLAYBOOK.scm - Operational runbook for glambot

(define playbook
  `((version . "1.0.0")
    (project . "glambot")

    (procedures
      ((check-presentation
         (steps
           ("1. Scan README for required sections"
            "2. Verify badge consistency and correctness"
            "3. Check documentation structure"
            "4. Validate asset paths (images, links)"
            "5. Generate presentation report"))
         (troubleshooting
           ((issue . "Badge URL returns 404")
            (solution . "Verify repo name, check badge service status"))))

       (auto-fix-formatting
         (steps
           ("1. Normalize markdown formatting"
            "2. Fix badge syntax"
            "3. Standardize section headers"
            "4. Commit fixes with descriptive message")))

       (flag-subjective-issues
         (steps
           ("1. Detect potential presentation problems"
            "2. Create issue with suggestions"
            "3. Request human review"
            "4. Do NOT auto-fix subjective wording")))))

    (alerts
      ((low-priority
         (trigger . "Presentation issues detected")
         (response
           ("1. Auto-fix objective issues"
            "2. Create issue for subjective items"
            "3. No blocking - presentation is polish, not correctness"))
         (escalation . "None - advisory only"))))))
