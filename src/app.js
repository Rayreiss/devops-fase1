// To-Do App simples
const tasks = [];

function addTask(name) {
  tasks.push({ id: tasks.length + 1, name, done: false });
}

function getTasks() {
  return tasks;
}

module.exports = { addTask, getTasks };