<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>my_Email</fullName>
        <description>my Email</description>
        <protected>false</protected>
        <recipients>
            <recipient>satishxi7@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/My_template</template>
    </alerts>
    <alerts>
        <fullName>testing</fullName>
        <ccEmails>Satesh.makineni@gmail.com</ccEmails>
        <description>testing</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/testing</template>
    </alerts>
    <alerts>
        <fullName>testing1</fullName>
        <ccEmails>kumar11.sfdc@gmail.com</ccEmails>
        <description>testing1</description>
        <protected>false</protected>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/testing</template>
    </alerts>
    <alerts>
        <fullName>testing100</fullName>
        <ccEmails>satesh.makineni@gmail.com</ccEmails>
        <description>testing100</description>
        <protected>false</protected>
        <recipients>
            <recipient>satishxi7@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/testing1</template>
    </alerts>
    <fieldUpdates>
        <fullName>My_First_Update</fullName>
        <field>Description</field>
        <formula>&quot; My field is updated&quot;</formula>
        <name>My First Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>My First WorkFlow</fullName>
        <actions>
            <name>My_First_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Task_New</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>testing</fullName>
        <actions>
            <name>testing</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>testing1</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Ownership</field>
            <operation>equals</operation>
            <value>Private</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>testing1</fullName>
        <actions>
            <name>testing100</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>equals</operation>
            <value>Makineni</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Task_New</fullName>
        <assignedTo>satishxi7@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Task New</subject>
    </tasks>
</Workflow>
