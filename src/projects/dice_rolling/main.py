import random
import sys


def play_dice_game() -> None:
    """Main logic of the dice game"""
    print("🎲 Dice Rolling Game")

    while True:
        choice = input("Roll the dice? (y/n): ").lower().strip()

        if choice in ("y", "yes"):
            dice1 = random.randint(1, 6)
            dice2 = random.randint(1, 6)
            print(f"You rolled a {dice1} and a {dice2}")

        elif choice in ("n", "no"):
            break

        else:
            print("Invalid choice! Please enter 'y'(yes) or 'n'(no).")

    print("Thanks for playing!")


def main() -> int:
    """Main entry point"""
    try:
        play_dice_game()
        return 0
    except KeyboardInterrupt:
        print("\n\nGame interrupted. Thanks for playing!")
        return 0
    except Exception as e:
        print(f"\nAn error occurred: {e}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
