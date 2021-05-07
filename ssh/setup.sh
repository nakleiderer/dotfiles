FILE=~/.ssh/id_ed25519
if test -f "$FILE"; then
    exit 0
fi

ssh-keygen -t ed25519 -C "4278631+nakleiderer@users.noreply.github.com" -N '' -q -f $FILE
eval "$(ssh-agent -s)"
ssh-add -K $FILE

echo "Add the following SSH public key to your GitHub account:\n$(cat $FILE.pub)"
