module.exports = {
  // 指定测试环境
  preset: 'ts-jest',
  testEnvironment: 'node',

  // 匹配测试文件的模式
  testMatch: ['**/__tests__/**/*.ts?(x)', '**/?(*.)+(spec|test).ts?(x)'],

  // 转换器设置
  transform: {
      '^.+\\.tsx?$': ['ts-jest', {
          tsconfig: 'tsconfig.json',
      }],
  },

  // 模块文件扩展名
  moduleFileExtensions: ['ts', 'tsx', 'js', 'jsx', 'json', 'node'],

  // 覆盖率报告
  collectCoverage: true,
  coverageDirectory: 'coverage',
  coverageReporters: ['text', 'lcov'],

  // 忽略的文件或目录
  coveragePathIgnorePatterns: ['/node_modules/', '/test/'],

  // 全局设置
  globals: {
  },
};

// module.exports = {
//   preset: 'ts-jest',
//   testEnvironment: 'node',
//   roots: ['<rootDir>/src'],
//   transform: {
//     '^.+\\.tsx?$': 'ts-jest',
//   },
//   testRegex: '(/__tests__/.*|(\\.|/)(test|spec))\\.tsx?$',
//   moduleFileExtensions: ['ts', 'tsx', 'js', 'jsx', 'json', 'node'],
//   globals: {
//     'ts-jest': {
//       tsconfig: 'tsconfig.json',
//     },
//   },
// };

