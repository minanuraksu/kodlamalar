import pygame
import random

pygame.init()

WIDTH, HEIGHT = 300, 600
screen = pygame.display.set_mode((WIDTH, HEIGHT))
clock = pygame.time.Clock()

block_x = 140
block_y = 0
speed = 5

running = True
while running:
    screen.fill((0,0,0))

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    keys = pygame.key.get_pressed()
    if keys[pygame.K_LEFT]:
        block_x -= 5
    if keys[pygame.K_RIGHT]:
        block_x += 5

    block_y += speed

    if block_y > HEIGHT:
        block_y = 0
        block_x = random.randint(0, WIDTH-30)

    pygame.draw.rect(screen, (0,255,0), (block_x, block_y, 30, 30))

    pygame.display.update()
    clock.tick(60)

pygame.quit()
