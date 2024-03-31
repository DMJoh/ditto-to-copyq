## Sync ditto clipboard to CopyQ.
Utility to sunc your Ditto clipboard to CopyQ

### Prerequisites
1. Ditto installed in PC and working
2. CopyQ installed
3. This is a shell script and will only work on *NIX systems.

### How to
- On the source PC
1. Open Ditto clipboard and select all clipboard entries (Ctrl+A).
2. Click on 'Import to text..".
3. Select a directory for this. There will be a text file for a single clipboard entry. Then Save.
4. Move these files to the target machine.
- On the target PC
1. Clone this repository and `cd` to the directory.
2. Give appropriate permissions.
      ```shell
      chmod 750 clips.sh
      ```
4. Modify `directory_path=` to the directory containing imported clips (text files from Step 3 in above section).
5. Make sure copyq is started and running
6. Run the script.
     ```
     ./clips.sh
     ```
