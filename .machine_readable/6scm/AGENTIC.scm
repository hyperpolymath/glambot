;; SPDX-License-Identifier: PMPL-1.0-or-later
;; AGENTIC.scm - AI agent interaction patterns for glambot

(define agentic-config
  `((version . "1.0.0")
    (project . "glambot")

    (patterns
      ((presentation-checking
         (focus . ("readme-structure" "badge-consistency" "documentation-polish"))
         (check-for
           ("README has required sections (Installation, Usage, License)"
            "Badges are consistent and up-to-date"
            "Links are not broken"
            "Images render correctly")))

       (auto-fix-policy
         (auto-fix
           ("Markdown formatting"
            "Badge syntax"
            "Section header casing"))
         (flag-for-review
           ("Unclear documentation"
            "Missing sections"
            "Inconsistent tone"))
         (never-auto-fix
           ("Wording changes"
            "Content additions"
            "Structural reorganization")))))

    (constraints
      ((languages
         (primary . "rust")
         (config . "toml"))

       (banned . ("typescript" "node" "python" "go"))

       (safety-rules
         ("Never change meaning of documentation"
          "Only fix objective formatting issues"
          "Always preserve user's voice and intent"
          "Flag subjective improvements, never force"))))))
