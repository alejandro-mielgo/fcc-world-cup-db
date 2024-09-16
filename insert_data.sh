#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.


echo $($PSQL "TRUNCATE games,teams") #delete previous data 

#Fill teams table
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WGOALS OGOALS
do
  #Insertar winners a la tabla de teams y a la tabla de games
  if [[ $WINNER != "winner" && $OPPONENT != 'opponent' ]]
  then
    WINNERID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    if [[ -z $WINNERID ]]
    then
      INSERTWINNER=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')")
      if [[ $INSERTWINNER = 'INSERT 0 1' ]]
      then
        WINNERID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
        #echo $($PSQL "INSERT INTO games(winner_id) VALUES('$WINNERID')")
      fi
    fi

    OPPONENTID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    if [[ -z $OPPONENTID ]]
    then
      INSERTOPPONENT=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')")
      if [[ $INSERTOPPONENT = 'INSERT 0 1' ]]
      then
        OPPONENTID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
        #echo $($PSQL "INSERT INTO games(opponent_id) VALUES('$OPPONENTID')")
      fi
    fi
      
    #Insertar los datos, se ha de hacer tood a la vez por la condición no null de las columnas
    echo $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR,'$ROUND',$WINNERID,$OPPONENTID,$WGOALS,$OGOALS)")

  fi
done
