#!/bin/bash
Loops=$(python -c "import random;print(random.randint(305, 315))")
echo $Loops
sleep 1

for (( int=0; int < $Loops; ++int))
do
  echo "int: $int"

  # Drink mana
  PotSleep=$(python -c "import random;print( round( random.uniform(0.875, 1.750), 3))")
  xdotool key ctrl+shift+F1
  sleep $PotSleep

  # Drink mana
  PotSleep=$(python -c "import random;print( round( random.uniform(0.875, 1.750), 3))")
  xdotool key ctrl+shift+F1
  sleep $PotSleep

  # Cast invisibility
  PotSleep=$(python -c "import random;print( round( random.uniform(0.875, 1.750), 3))")
  xdotool key ctrl+shift+F2
  sleep $PotSleep

  # If we have looped 5 times, drink an extra potion
  if ! (( $int % 5 ));then
	echo -e "\nMade it"
	xdotool key ctrl+shift+F1
	PotSleep=$(python -c "import random;print( round( random.uniform(0.875, 1.750), 3))")
	sleep $PotSleep
  fi

  # Increment the variables
  $int=$((int+1))
done
