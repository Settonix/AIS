import React from "react";
import {
  List,
  Datagrid,
  Edit,
  Create,
  SimpleForm,
  DateField,
  ReferenceInput,
  TextField,
  SelectInput,
  ReferenceManyField,
  SingleFieldList,
  SelectArrayInput,
  ChipField,
  EditButton,
  ReferenceArrayInput,
  DisabledInput,
  TextInput,
  LongTextInput,
  DateInput
} from "admin-on-rest";
import BookIcon from "material-ui/svg-icons/action/book";
export const PostIcon = BookIcon;

export const name = "art";

export const list = props => (
  <List {...props}>
    <Datagrid>
      <TextField source="id" />
      <TextField source="title" />
      <TextField source="year" />
      <TextField source="addeddate" />
      <EditButton basePath="/stock" />
    </Datagrid>
  </List>
);

const Title = ({ record }) => {
  return <span>Post {record ? `"${record.title}"` : ""}</span>;
};

export const edit = props => (
  <Edit title={<Title />} {...props}>
    <SimpleForm>
      <DisabledInput source="id" />
      <TextInput source="title" />
      <TextInput source="year" />
      <TextInput source="addeddate" />
      <TextInput source="info" />
      <ReferenceInput label="Artist" source="artist_id" reference="artist">
        <SelectInput optionText="name" />
      </ReferenceInput>
    </SimpleForm>
  </Edit>
);

export const create = props => (
  <Create title="Create a Post" {...props}>
    <SimpleForm redirect="list">
      <DisabledInput source="id" />
      <TextInput source="title" />
      <TextInput source="year" />
      <TextInput source="addeddate" />
    </SimpleForm>
  </Create>
);
