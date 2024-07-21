import {
  RuleConfigCondition,
  RuleConfigSeverity,
  TargetCaseType,
} from '@commitlint/types';

export default {
  extends: ['gitmoji'],
  parserPreset: 'gitmoji-parser-opts',
  rules: {
    'body-leading-blank': [RuleConfigSeverity.Warning, 'always'] as const,
    // not setting any max-line-length since we are writing release-notes
    // in our chore(release) commit messages. @see release.config.ts '@semantic-release/git' configurations.
    // 'body-max-line-length': [RuleConfigSeverity.Error, 'always', 100] as const,
    'footer-leading-blank': [RuleConfigSeverity.Warning, 'always'] as const,
    // 'footer-max-line-length': [
    //     RuleConfigSeverity.Error,
    //     'always',
    //     100,
    // ] as const,
    'header-max-length': [RuleConfigSeverity.Error, 'always', 100] as const,
    'header-trim': [RuleConfigSeverity.Error, 'always'] as const,
    'subject-case': [
      RuleConfigSeverity.Error,
      'never',
      ['sentence-case', 'start-case', 'pascal-case', 'upper-case'],
    ] as [RuleConfigSeverity, RuleConfigCondition, TargetCaseType[]],
    'subject-empty': [RuleConfigSeverity.Error, 'never'] as const,
    'subject-full-stop': [RuleConfigSeverity.Error, 'never', '.'] as const,
    'type-case': [RuleConfigSeverity.Error, 'always', 'lower-case'] as const,
    'type-empty': [RuleConfigSeverity.Error, 'never'] as const,
    'type-enum': [
      RuleConfigSeverity.Error,
      'always',
      [
        'style',
        'perf',
        'prune',
        'fix',
        'quickfix',
        'feature',
        'docs',
        'deploy',
        'ui',
        'init',
        'test',
        'security',
        'release',
        'lint',
        'wip',
        'fix-ci',
        'downgrade',
        'upgrade',
        'pushpin',
        'ci',
        'analytics',
        'refactoring',
        'dep-add',
        'dep-rm',
        'config',
        'i18n',
        'typo',
        'poo',
        'revert',
        'merge',
        'dep-up',
        'compat',
        'mv',
        'license',
        'breaking',
        'assets',
        'access',
        'docs-code',
        'beer',
        'texts',
        'db',
        'log-add',
        'log-rm',
        'contrib-add',
        'ux',
        'arch',
        'iphone',
        'clown-face',
        'egg',
        'see-no-evil',
        'camera-flash',
        'experiment',
        'seo',
        'types',
        'seed',
        'flags',
        'animation',
        'wastebasket',
        'passport-control',
        'adhesive-bandage',
        'monocle-face',
        'coffin',
        'test-tube',
        'necktie',
        'stethoscope',
        'bricks',
        'technologist',
        'chore',
      ],
    ] as [RuleConfigSeverity, RuleConfigCondition, string[]],
  },
};
