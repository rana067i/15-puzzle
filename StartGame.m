function [] = StartGame( )
%STARTGAME Game start
%   Solves the puzzle 15 game using AI techniques : A* Algorithm
	clear all
    clc
	
    userInput = input('Insert matrix [4x4] to be solved: ');
    tamanho = size(userInput);
    if not(all(tamanho == [4 4]))
        msgbox('Matrix dimesion must be 4x4 !');

    elseif sum(sum(userInput))~=120
        msgbox('The matrix should have these values only  [ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 0] !');
    else
        goalSt = FindGoal(userInput);
		SearchBestMove(userInput , goalSt);
	end
end