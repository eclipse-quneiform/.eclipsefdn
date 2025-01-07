local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.quneiform', 'eclipse-quneiform') {
  settings+: {
    description: "",
    name: "Eclipse Quneiform project",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Quneiform project website",
      web_commit_signoff_required: false,
    },
  ],
}
