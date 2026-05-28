const { addTask, getTasks } = require('../src/app');

test('deve adicionar uma tarefa', () => {
  addTask('Estudar DevOps');
  expect(getTasks().length).toBeGreaterThan(0);
});

test('deve retornar lista de tarefas', () => {
  const tasks = getTasks();
  expect(Array.isArray(tasks)).toBe(true);
});