<?php
declare(strict_types=1);

namespace App\Domain;

class Todolist
{
    public function __construct(
        private array $tasks,
        private string $name
    )
    {
    }

    public function addTask(string $title): void
    {
        $this->tasks[] = $title;
    }
}
